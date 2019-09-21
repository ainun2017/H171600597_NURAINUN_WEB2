<?php

namespace App\Http\Controllers\Auth;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\ AuthenticatesUsers;


class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = '/home';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }

public function captchaValidate(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'email' => 'required|email',
            'phone' => 'required|digits:12|unique:users',
            'password' => 'required|min:6',
            'captcha' => 'required|captcha'
        ]);
    }
    public function refreshCaptcha()
    {
        return response()->json(['captcha'=> captcha_img()]);

    }
    protected function credentials(Request $request)
{
    if(is_numeric($request->get('email'))){
        return ['phone'=>$request->get('email'),'password'=>$request->get('password')];
    }
    return $request->only($this->username(), 'password');
    }
}