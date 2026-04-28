<?php

namespace App\Http\Controllers\User;

use App\Constants\ManageStatus;
use App\Http\Controllers\Controller;
use Illuminate\Validation\ValidationException;

class AuthorizationController extends Controller
{
    function authorizeForm()
    {
        $user                = auth('web')->user();
        $toastTemplate       = null;
        $verificationRoute   = null;
        $resendRoute         = null;
        $verificationMessage = null;
        $resendMessage       = null;

        if (!$user->status) {
            $pageTitle = 'Banned';
            $type      = 'ban';
        } elseif (!$user->ec) {
            $type          = 'email';
            $pageTitle     = 'Confirm Email Address';
            $toastTemplate = 'EVER_CODE';
        } elseif (!$user->sc) {
            $type          = 'sms';
            $pageTitle     = 'Confirm Mobile Number';
            $toastTemplate = 'SVER_CODE';
        } elseif (!$user->tc) {
            $type = preferredOtpChannel();

            if (!$type) {
                $user->tc = ManageStatus::VERIFIED;
                $user->save();

                return to_route('user.home');
            }

            $pageTitle         = 'Security Verification';
            $toastTemplate     = $type === 'email' ? 'EVER_CODE' : 'SVER_CODE';
            $verificationRoute = route('user.verify.twofactor', $type);
            $resendRoute       = route('user.send.twofactor.code', $type);
            $resendMessage     = $type === 'email'
                ? 'Please check including your spam folder. If not found, then you can'
                : 'If you don\'t receive any code, then you can';
        } else {
            return to_route('user.home');
        }

        if (!$this->checkCodeValidity($user) && $type != 'ban') {
            $this->issueVerificationCode($user, $toastTemplate, $type);
        }

        return view("{$this->activeTheme}user.auth.authorization.$type", compact(
            'user',
            'pageTitle',
            'verificationRoute',
            'resendRoute',
            'verificationMessage',
            'resendMessage'
        ));
    }

    function sendVerifyCode($type)
    {
        $user = auth('web')->user();

        if ($this->checkCodeValidity($user)) {
            $targetTime = $user->ver_code_send_at->addMinutes(2)->timestamp;
            $delay      = $targetTime - time();

            throw ValidationException::withMessages([
                'resend' => 'Please try again after ' . $delay . ' seconds'
            ]);
        }

        if ($type == 'email') {
            $type          = 'email';
            $toastTemplate = 'EVER_CODE';
        } else {
            $type          = 'sms';
            $toastTemplate = 'SVER_CODE';
        }

        $this->issueVerificationCode($user, $toastTemplate, $type);

        $toast[] = ['success', 'The verification code has been sent successfully'];

        return back()->with('toasts', $toast);
    }

    function sendTwoFactorCode($type)
    {
        $user = auth('web')->user();

        if ($type !== preferredOtpChannel() || $user->tc) {
            return to_route('user.authorization');
        }

        if ($this->checkCodeValidity($user)) {
            $targetTime = $user->ver_code_send_at->addMinutes(2)->timestamp;
            $delay      = $targetTime - time();

            throw ValidationException::withMessages([
                'resend' => 'Please try again after ' . $delay . ' seconds'
            ]);
        }

        $toastTemplate = $type === 'email' ? 'EVER_CODE' : 'SVER_CODE';

        $this->issueVerificationCode($user, $toastTemplate, $type);

        return back()->with('toasts', [
            ['success', 'The verification code has been sent successfully'],
        ]);
    }

    function emailVerification()
    {
        $verCode = $this->codeValidation();
        $user    = auth('web')->user();

        if ($user->ver_code == $verCode) {
            $user->ec               = ManageStatus::VERIFIED;
            $user->ver_code         = null;
            $user->ver_code_send_at = null;
            $user->save();

            return to_route('user.home');
        }

        throw ValidationException::withMessages([
            'code' => 'Verification code doesn\'t match!'
        ]);
    }

    function mobileVerification()
    {
        $verCode = $this->codeValidation();
        $user    = auth('web')->user();

        if ($user->ver_code == $verCode) {
            $user->sc               = ManageStatus::VERIFIED;
            $user->ver_code         = null;
            $user->ver_code_send_at = null;
            $user->save();

            return to_route('user.home');
        }

        throw ValidationException::withMessages([
            'code' => 'Verification code doesn\'t match!'
        ]);
    }

    function twoFactorVerification($type)
    {
        $user = auth('web')->user();

        if ($type !== preferredOtpChannel() || $user->tc) {
            return to_route('user.authorization');
        }

        $verCode = $this->codeValidation();

        if ($user->ver_code == $verCode) {
            $user->tc               = ManageStatus::VERIFIED;
            $user->ver_code         = null;
            $user->ver_code_send_at = null;
            $user->save();

            return to_route('user.home');
        }

        throw ValidationException::withMessages([
            'code' => 'Verification code doesn\'t match!'
        ]);
    }

    protected function checkCodeValidity($user, $addMin = 2)
    {
        if (!$user->ver_code_send_at) return false;

        if ($user->ver_code_send_at->addMinutes($addMin) < now()) return false;

        return true;
    }

    protected function codeValidation()
    {
        $this->validate(request(), [
            'code'   => 'required|array|min:6',
            'code.*' => 'required|integer',
        ]);

        return (int)implode("", request('code'));
    }

    protected function issueVerificationCode($user, ?string $toastTemplate, string $type): void
    {
        $user->ver_code         = verificationCode(6);
        $user->ver_code_send_at = now();
        $user->save();

        notify($user, $toastTemplate, [
            'code' => $user->ver_code
        ], [$type]);
    }
}
