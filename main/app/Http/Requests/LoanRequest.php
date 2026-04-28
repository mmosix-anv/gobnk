<?php

namespace App\Http\Requests;

use App\Lib\FormProcessor;
use Illuminate\Contracts\Validation\ValidationRule;
use Illuminate\Foundation\Http\FormRequest;
use Symfony\Component\HttpFoundation\Response;

class LoanRequest extends FormRequest
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
        $transactionStateInformation = session('transaction_state_information', []);

        if (!isset($transactionStateInformation['loan_plan'])) abort(Response::HTTP_BAD_REQUEST);

        $formData     = json_decode($transactionStateInformation['loan_form']['form_data']);
        $dynamicRules = (new FormProcessor)->valueValidation($formData);
        return [
            ...$dynamicRules,
        ];
    }
}
