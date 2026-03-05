@extends('admin.layouts.master')

@section('master')
    <div class="col-12">
        <div class="custom--card">
            <div class="card-header">
                <h3 class="title">{{ $pageTitle }}</h3>
            </div>
            <form action="{{ isset($transaction) ? route('admin.transaction.update', $transaction->id) : route('admin.transaction.store') }}" method="POST">
                @csrf
                <div class="card-body">
                    <div class="row gy-3">
                        @if(!isset($transaction))
                        <div class="col-md-6">
                            <label class="form--label required">@lang('User')</label>
                            <select class="form--control form-select select-2" name="user_id" required {{ isset($transaction) ? 'disabled' : '' }}>
                                <option value="">@lang('Select User')</option>
                                @foreach($users as $user)
                                    <option value="{{ $user->id }}" 
                                        data-balance="{{ showAmount($user->balance) }}"
                                        @selected(old('user_id', $transaction->user_id ?? '') == $user->id)>
                                        {{ $user->username }} - {{ $user->fullname }} (Balance: {{ showAmount($user->balance) }} {{ __($setting->site_cur) }})
                                    </option>
                                @endforeach
                            </select>
                        </div>

                        @else
                        <div class="col-md-6">
                            <label class="form--label">@lang('User')</label>
                            <input type="text" class="form--control" value="{{ $transaction->user->username }} - {{ $transaction->user->fullname }}" disabled>
                        </div>
                        @endif

                        @if(!isset($transaction))
                        <div class="col-md-6">
                            <label class="form--label required">@lang('Transaction Type')</label>
                            <select class="form--control form-select" name="trx_type" required>
                                <option value="">@lang('Select Type')</option>
                                <option value="+" @selected(old('trx_type') == '+')>@lang('Credit (+)')</option>
                                <option value="-" @selected(old('trx_type') == '-')>@lang('Debit (-)')</option>
                            </select>
                        </div>

                        <div class="col-md-6">
                            <label class="form--label required">@lang('Amount')</label>
                            <div class="input--group">
                                <input type="number" step="any" class="form--control" name="amount" value="{{ old('amount') }}" required>
                                <span class="input-group-text">{{ __($setting->site_cur) }}</span>
                            </div>
                        </div>
                        @else
                        <div class="col-md-6">
                            <label class="form--label">@lang('Transaction Type')</label>
                            <input type="text" class="form--control" value="{{ $transaction->trx_type == '+' ? 'Credit (+)' : 'Debit (-)' }}" disabled>
                        </div>

                        <div class="col-md-6">
                            <label class="form--label">@lang('Amount')</label>
                            <input type="text" class="form--control" value="{{ showAmount($transaction->amount) }} {{ __($setting->site_cur) }}" disabled>
                        </div>
                        @endif

                        <div class="col-md-6">
                            <label class="form--label required">@lang('Remark')</label>
                            <input type="text" class="form--control" name="remark" value="{{ old('remark', $transaction->remark ?? '') }}" maxlength="40" required>
                        </div>

                        <div class="col-md-6">
                            <label class="form--label">@lang('Transaction Date & Time')</label>
                            <input type="datetime-local" class="form--control" name="created_at" 
                                value="{{ old('created_at', isset($transaction) ? $transaction->created_at->format('Y-m-d\TH:i') : '') }}" 
                                max="{{ now()->format('Y-m-d\TH:i') }}"
                                placeholder="@lang('Select Date & Time (Optional)')" 
                                autocomplete="off">
                            <small class="text-muted">@lang('Leave empty to use current date/time')</small>
                        </div>

                        <div class="col-12">
                            <label class="form--label required">@lang('Details')</label>
                            <textarea class="form--control" name="details" rows="4" maxlength="255" required>{{ old('details', $transaction->details ?? '') }}</textarea>
                        </div>
                    </div>
                </div>
                <div class="card-footer">
                    <div class="d-flex justify-content-end gap-2">
                        <a href="{{ route('admin.transaction.index') }}" class="btn btn--secondary">
                            <i class="ti ti-arrow-left"></i> @lang('Back')
                        </a>
                        <button type="submit" class="btn btn--base">
                            <i class="ti ti-device-floppy"></i> @lang('Save Transaction')
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
@endsection

@push('page-script')
    <script>
        (function ($) {
            "use strict"

            // Set max datetime to current datetime
            const now = new Date();
            const maxDateTime = now.toISOString().slice(0, 16);
            $('input[name="created_at"]').attr('max', maxDateTime);
        })(jQuery)
    </script>
@endpush
