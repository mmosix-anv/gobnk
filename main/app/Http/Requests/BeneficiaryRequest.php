<?php

namespace App\Http\Requests;

use App\Lib\FormProcessor;
use App\Models\Beneficiary;
use App\Models\OtherBank;
use App\Rules\UniqueBeneficiaryAccount;
use Illuminate\Contracts\Validation\ValidationRule;
use Illuminate\Foundation\Http\FormRequest;

class BeneficiaryRequest extends FormRequest
{
    protected ?Beneficiary $beneficiary = null;

    /**
     * Resolve the beneficiary once and store it.
     */
    protected function resolveBeneficiary(): void
    {
        if ($this->route('beneficiary')) $this->beneficiary = $this->route('beneficiary');
    }

    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        $this->resolveBeneficiary();

        return !$this->beneficiary || $this->beneficiary->user_id === auth('web')->id();
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, ValidationRule|array|string>
     */
    public function rules(): array
    {
        // Base validation rules
        $rules = [
            'beneficiary_type' => 'required|string|in:own_bank,other_bank',
            'other_bank'       => 'required_if:beneficiary_type,other_bank|integer|exists:other_banks,id',
            'short_name'       => 'required|string|max:40',
        ];

        // Handle account number validation based on beneficiary type
        if ($this->input('beneficiary_type') === 'own_bank') {
            // For own bank: account_number is a user account number that must exist
            $rules['account_number'] = [
                'required',
                'string',
                function ($attribute, $value, $fail) {
                    $user = \App\Models\User::where('account_number', $value)
                        ->whereNot('id', auth('web')->id())
                        ->active()
                        ->first();

                    if (!$user) {
                        $fail('The selected account number does not exist or is invalid.');
                    }
                },
                new UniqueBeneficiaryAccount(auth('web')->id(), $this->beneficiary?->id)
            ];
        } elseif ($this->input('beneficiary_type') === 'other_bank') {
            // For other bank: account_number is a text input that must be unique
            $rules['account_number'] = [
                'required',
                'string',
                new UniqueBeneficiaryAccount(auth('web')->id(), $this->beneficiary?->id)
            ];

            // Account name is required for other bank
            $rules['account_name'] = 'required|string|max:255';
        }

        // Dynamically add rules if 'other_bank' is filled
        if ($this->filled('other_bank')) {
            $otherBank = \App\Models\OtherBank::with('form')->active()->findOrFail($this->input('other_bank'));
            $formData  = $otherBank->form->form_data;

            // Get dynamic validation rules from the FormProcessor
            $dynamicRules = (new \App\Lib\FormProcessor)->valueValidation($formData);

            if ($this->input('beneficiary_type') === 'other_bank') {
                // For external bank, use both label and snake-cased labels to avoid form-name mismatch.
                $fallbackDynamicRules = [];

                foreach ($dynamicRules as $field => $rule) {
                    $fallbackDynamicRules[$field] = $rule;
                    $snakeField = \App\Http\Helpers\helpers::titleToKey($field);

                    if ($snakeField !== $field) {
                        $fallbackDynamicRules[$snakeField] = $rule;
                    }
                }

                // Filter out base fields to preserve their validation rules
                $fallbackDynamicRules = array_diff_key($fallbackDynamicRules, array_flip(['account_number', 'account_name', 'short_name']));

                $rules = array_merge($rules, $fallbackDynamicRules);
            } else {
                // For own bank option, exclude dynamic bank-specific fields to avoid duplicate validation for account fields.
                $filteredDynamicRules = array_diff_key($dynamicRules, array_flip(['account_number', 'account_name', 'short_name']));
                $rules = array_merge($rules, $filteredDynamicRules);
            }
        }

        return $rules;
    }
}
