@extends("{$activeTheme}layouts.auth")

@section('auth')
    <div class="custom--card">
        <div class="card-header">
            <h3 class="title">@lang('Two-Factor Authentication')</h3>
        </div>
        <div class="card-body">
            <div class="row g-4">
                <div class="col-lg-7">
                    <div class="two-fa-setting">
                        <p>@lang('Two-factor authentication provides extra protection for your account by requiring a verification code when you log in.')</p>

                        @if ($sendVia)
                            <p><strong>@lang('Delivery Method'):</strong> @lang('Verification codes will be sent by') {{ $sendVia === 'email' ? __('email') : __('SMS') }}.</p>

                            @if ($sendVia === 'email' && $setting->sms_based_otp)
                                <p><strong>@lang('Priority'):</strong> @lang('Email is used first whenever it is available.')</p>
                            @endif
                        @else
                            <p class="text--danger">@lang('Email and SMS verification are both disabled in settings, so two-factor authentication is currently unavailable.')</p>
                        @endif

                        <p>@lang('Google Authenticator is no longer required. This account now uses email or SMS verification for two-factor authentication based on the available settings.')</p>
                    </div>
                </div>
                <div class="col-lg-5">
                    @if(!$user->ts)
                        <div class="alert alert--base">
                            <span class="alert__content w-100 ps-0">
                                <small>
                                    <strong>@lang('Enable two-factor authentication to require a verification code during login.')</strong>
                                </small>
                            </span>
                        </div>
                        <form action="{{ route('user.twofactor.enable') }}" method="POST" class="verification-code-form mt-3">
                            @csrf
                            <button type="submit" class="btn btn--base w-100" @disabled(!$sendVia)>@lang('Enable')</button>
                        </form>
                    @else
                        <div class="alert alert--base">
                            <span class="alert__content w-100 ps-0">
                                <small>
                                    <strong>@lang('Disable two-factor authentication to stop login verification codes for this account.')</strong>
                                </small>
                            </span>
                        </div>
                        <div class="account-setup-key mt-3">
                            <form action="{{ route('user.twofactor.disable') }}" method="POST" class="verification-code-form">
                                @csrf
                                <button type="submit" class="btn btn--base w-100">@lang('Disable')</button>
                            </form>
                        </div>
                    @endif
                </div>
            </div>
        </div>
    </div>
@endsection
