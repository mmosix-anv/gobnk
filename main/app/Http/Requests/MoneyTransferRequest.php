<?php

namespace App\Http\Requests;

use App\Models\OtherBank;
use App\Models\User;
use Illuminate\Contracts\Validation\ValidationRule;
use Illuminate\Database\Query\Builder;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class MoneyTransferRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, ValidationRule|array|string>
     */
    public function rules(): array
    {
        $beneficiaryableType = $this->route()->named('user.money.transfer.within.bank.transfer') ? User::class : OtherBank::class;

        return [
            'beneficiaryable_id' => [
                'required',
                'integer',
                Rule::exists('beneficiaries', 'beneficiaryable_id')->where(
                    fn(Builder $query) => $query->where([
                        'user_id'              => auth('web')->id(),
                        'beneficiaryable_type' => $beneficiaryableType,
                    ])
                )
            ],
            'amount'             => 'required|numeric|gt:0',
        ];
    }

    /**
     * Get custom messages for validator errors.
     *
     * @return array
     */
    public function messages(): array
    {
        return [
            'beneficiaryable_id.required' => 'The beneficiary field is required.',
            'beneficiaryable_id.integer'  => 'The beneficiary must be an integer.',
            'beneficiaryable_id.exists'   => 'The selected beneficiary is invalid.',
        ];
    }
}
