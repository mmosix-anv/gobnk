@extends("{$activeTheme}layouts.auth")

@section('auth')
    <div class="row justify-content-center">
        <div class="col-lg-6 col-md-8 col-sm-10">
            <div class="custom--card">
                <div class="card-header">
                    <h3 class="title">@lang('You have requested to invest in a FDS plan')</h3>
                </div>
                <div class="card-body">
                    <form action="{{ route('user.fds.plan.confirm') }}" method="post" class="row g-4">
                        @csrf
                        <div class="col-12">
                            <table class="table table-borderless no-shadow mb-2">
                                <tbody>
                                    <tr>
                                        <td><span class="fw-bold">@lang('Plan')</span></td>
                                        <td>{{ __($plan->name) }}</td>
                                    </tr>
                                    <tr>
                                        <td><span class="fw-bold">@lang('Interest Rate')</span></td>
                                        <td>{{ $plan->interest_rate . '%' }}</td>
                                    </tr>
                                    <tr>
                                        <td><span class="fw-bold">@lang('Your Investment Amount')</span></td>
                                        <td>{{ $setting->cur_sym . showAmount($investAmount) }}</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <span class="fw-bold">{{ trans('Profitable Amount') . ' (' . trans('Every') . ' ' . $plan->interest_payout_interval . ' ' . trans(\Illuminate\Support\Str::plural('Day', $plan->interest_payout_interval)) . ')' }}</span>
                                        </td>
                                        <td>{{ $setting->cur_sym . showAmount($profitableAmount) }}</td>
                                    </tr>
                                    <tr>
                                        <td><span class="fw-bold">@lang('Withdrawal Not Allowed Until')</span></td>
                                        <td class="text--base">{{ showDateTime($lockedPeriod, 'd M, Y') }}</td>
                                    </tr>
                                </tbody>
                            </table>
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
                                <a href="{{ route('user.fds.plans') }}" class="btn btn--sm btn--secondary px-4">@lang('Cancel')</a>
                                <button type="submit" class="btn btn--sm btn--base px-4">@lang('Confirm')</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
