<?php

namespace App\Rules;

use App\Models\Beneficiary;
use Closure;
use Illuminate\Contracts\Validation\ValidationRule;
use Illuminate\Database\Eloquent\Builder;

class UniqueBeneficiaryAccount implements ValidationRule
{
    public function __construct(protected int $userId, protected ?int $beneficiaryId = null)
    {
    }

    /**
     * Run the validation rule.
     */
    public function validate(string $attribute, mixed $value, Closure $fail): void
    {
        $accountExists = Beneficiary::where('user_id', $this->userId)
            ->where(function (Builder $query) use ($value) {
                // Check for own_bank beneficiaries (details is object with account_number key)
                $query->orWhere(function (Builder $q) use ($value) {
                    $q->whereRaw('JSON_CONTAINS(details, ?, "$")', [
                        json_encode(['account_number' => $value])
                    ]);
                });

                // Check for other_bank beneficiaries (details is array of objects with name/value)
                $query->orWhere(function (Builder $q) use ($value) {
                    $q->whereRaw('JSON_CONTAINS(details, ?, "$[*].value")', [
                        json_encode($value)
                    ]);
                });
            })
            ->when($this->beneficiaryId, function (Builder $query) {
                $query->whereNot('id', $this->beneficiaryId);
            })
            ->exists();

        if ($accountExists) $fail('This :attribute is already added to your beneficiaries.');
    }
}
