@extends("{$activeTheme}layouts.auth")

@section('auth')
    <div class="row justify-content-center">
        <div class="col-lg-6 col-md-8 col-sm-10">
            <div class="custom--card">
                <div class="card-header">
                    <h3 class="title">@lang('You have requested to invest in a DPS plan')</h3>
                </div>
                <div class="card-body">
                    <form action="{{ route('user.dps.plan.confirm') }}" method="post" class="row g-4">
                        @csrf
                        <input type="hidden" name="dps_plan" value="{{ $plan->id }}">
                        <div class="col-12">
                            <table class="table table-borderless no-shadow mb-2">
                                <tbody>
                                    <tr>
                                        <td><span class="fw-bold">@lang('Plan')</span></td>
                                        <td>{{ __($plan->name) }}</td>
                                    </tr>
                                    <tr>
                                        <td><span class="fw-bold">@lang('Per Installment')</span></td>
                                        <td>{{ $setting->cur_sym . showAmount($plan->per_installment) }}</td>
                                    </tr>
                                    <tr>
                                        <td><span class="fw-bold">@lang('Installment Interval')</span></td>
                                        <td>{{ $plan->installment_interval . ' ' . trans(\Illuminate\Support\Str::plural('Day', $plan->installment_interval)) }}</td>
                                    </tr>
                                    <tr>
                                        <td><span class="fw-bold">@lang('Total Installment')</span></td>
                                        <td>{{ $plan->total_installment }}</td>
                                    </tr>
                                    <tr>
                                        <td><span class="fw-bold">@lang('Total Deposit Amount')</span></td>
                                        <td>{{ $setting->cur_sym . showAmount($plan->total_deposit_amount) }}</td>
                                    </tr>
                                    <tr>
                                        <td><span class="fw-bold">@lang('Interest Rate')</span></td>
                                        <td>{{ $plan->interest_rate . '%' }}</td>
                                    </tr>
                                    <tr>
                                        <td><span class="fw-bold">@lang('Profit Amount')</span></td>
                                        <td>{{ $setting->cur_sym . showAmount($plan->profit_amount) }}</td>
                                    </tr>
                                    <tr>
                                        <td><span class="fw-bold">@lang('Withdrawable Amount')</span></td>
                                        <td>{{ $setting->cur_sym . showAmount($plan->maturity_amount) }}</td>
                                    </tr>
                                </tbody>
                            </table>

                            @php $lateFee = $plan->fixed_charge + (($plan->per_installment * $plan->percentage_charge) / 100) @endphp

                            <p class="text--danger">
                                <small>* {{ trans('If an installment is delayed by') . ' ' . $plan->delay_duration . ' ' . trans('or more days, a late fee of') . ' ' . $setting->cur_sym . showAmount($lateFee) . ' ' . trans('will be applied for each day of delay.') }}</small>
                            </p>
                            <p class="text--danger">
                                <small>* @lang('The total late fee will be deducted from the withdrawable amount.')</small>
                            </p>
                        </div>
                        <div class="col-12">
                            @if($setting->email_based_otp || $setting->sms_based_otp)
                                <div class="alert alert--info mb-3">
                                    <span class="alert__content w-100 ps-0">
                                        @if($setting->email_based_otp)
                                            @lang('A verification code will be sent to your email address before submission.')
                                        @else
                                            @lang('A verification code will be sent to your mobile number before submission.')
                                        @endif
                                    </span>
                                </div>
                            @endif
                            <div class="d-flex justify-content-center gap-2">
                                <a href="{{ route('user.dps.plans') }}" class="btn btn--sm btn--secondary px-4">@lang('Cancel')</a>
                                <button type="submit" class="btn btn--sm btn--base px-4">@lang('Confirm')</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
