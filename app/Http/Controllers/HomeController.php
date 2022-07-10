<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Log;
use Mail;
use Session;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return view('home');
    }

    public function sendMail(Request $request)
    {
        // Log::info($request->email);
        Session::flash('messageRegister', 'Đăng ký gửi thông tin thành công');
        $data = array();
        $emailSend = $request->email;
        Mail::send('mail.resgister', array('data' => $data), function ($message) use ($data, $emailSend) {
            $message->to($emailSend, 'Nhận tin đăng ký')->subject('Chúc mừng bạn nhận được voucher giảm 10%');
        });
        return redirect('/');
    }
}
