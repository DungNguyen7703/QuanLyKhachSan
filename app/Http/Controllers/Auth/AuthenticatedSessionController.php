<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Http\Requests\Auth\LoginRequest;
use App\Providers\RouteServiceProvider;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\View\View;

class AuthenticatedSessionController extends Controller
{
    /**
     * Display the login view.
     */
    public function create(): View
    {
        return view('auth.login');
    }

    /**
     * Handle an incoming authentication request.
     */
    public function store(LoginRequest $request): RedirectResponse
    {
        $request->authenticate();

        $request->session()->regenerate();

        $role = Auth::user()->role;
        if ($role === 'admin') {
            return redirect()->route('dashboard');
        }
        return redirect()->route('index');

        //return redirect()->intended(RouteServiceProvider::HOME);

        // if (
        //     method_exists($this, 'hasTooManyLoginAttempts') &&
        //     $this->hasTooManyLoginAttempts($request)
        // ) {
        //     $this->fireLockoutEvent($request);

        //     return $this->sendLockoutResponse($request);
        // }

        // if ($this->attemptLogin($request)) {
        //     $request->session()->regenerate();

        //     $this->clearLoginAttempts($request);

        //     // Điều hướng dựa trên vai trò
        //     $role = Auth::user()->role;
        //     if ($role === 'admin') {
        //         return redirect()->intended('/dashboard');
        //     }

        //     return redirect()->intended('/welcome');
        // }

        // $this->incrementLoginAttempts($request);

        // return $this->sendFailedLoginResponse($request);
    }

    /**
     * Destroy an authenticated session.
     */
    public function destroy(Request $request): RedirectResponse
    {
        Auth::guard('web')->logout();

        $request->session()->invalidate();

        $request->session()->regenerateToken();

        return redirect('/');
    }
}
