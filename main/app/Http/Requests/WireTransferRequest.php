<?php

namespace App\Http\Requests;

use App\Lib\FormProcessor;
use App\Models\WireTransferSettings;
use Illuminate\Contracts\Validation\ValidationRule;
use Illuminate\Foundation\Http\FormRequest;

class WireTransferRequest extends FormRequest
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
        $wireTransferSettings = WireTransferSettings::with('form')->firstOrFail();
        $dynamicRules         = (new FormProcessor)->valueValidation($wireTransferSettings->form->form_data ?? []);

        return [
            'amount'             => 'required|numeric|gt:0',
            ...$dynamicRules,
        ];
    }
}
