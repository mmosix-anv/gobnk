<?php

namespace App\Http\Requests;

use App\Lib\FormProcessor;
use App\Models\Form;
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
        // Get dynamic validation rules from the FormProcessor
        $form         = Form::where('act', '=', 'wire_transfer')->firstOrFail();
        $dynamicRules = (new FormProcessor)->valueValidation($form->form_data);

        return [
            'amount'             => 'required|numeric|gt:0',
            ...$dynamicRules,
        ];
    }
}
