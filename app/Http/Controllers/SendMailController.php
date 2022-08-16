<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\RegisterUser;
use Mail;

class SendMailController extends Controller
{
    public function forgot_password()
    {
        return view('forgot_password');
    }

    public function sendOTP_and_generator_otp(Request $request){
        $email = $request->email;
        if(!empty($email)){
            $check_user = RegisterUser::where('email',$email)->first();
            if(!empty($check_user)){
                $details = rand(1000,9999);
                $update_user = RegisterUser::where('email',$check_user->email)->first();
                $update_user->otp = $details;
                if($update_user->save()){
                    Mail::to($check_user->email)->send(new \App\Mail\SendOTP($details));
                    session()->flash('success','OTP sent successfully');
                    return redirect('otp_verify/'.$check_user->id);
                }else{
                    session()->flash('error','Something went wrong');    
                    return redirect()->back();
                }
            }else{
                session()->flash('error','Username Not Found');
                return redirect()->back();
            }
        }else{
            session()->flash('error','Enter User Name');
            return redirect()->back();
        }
    }

    public function otp_verify(Request $request){
        return view('otp_verify');
    }

    public function check_otp(Request $request){
        $user_id = $request->user_id;
        $otp = $request->otp;
        if(!empty($otp)){
            $update_user = RegisterUser::where('id',$user_id)->where('otp',$otp)->first();
            if(!empty($update_user)){
                return redirect('update_password/'.$update_user->id);
            }else{
                session()->flash('error','Your OTP wrong');
            }
        }else{
            session()->flash('error','Please Enter OTP');
        }
        return redirect()->back();
    }

    public function update_password()
    {
        return view('update_password');
    }

    public function update_pass(Request $request)
    {
        $user_id = $request->user_id;
        $password = $request->password;
        $confirm_password = $request->confirm_password;

        if(!empty($password) && !empty($confirm_password)){
            if($password == $confirm_password){
                $update_pss = RegisterUser::where('id',$user_id)->first();
                $update_pss->password = $request->password;
                if($update_pss->save()){
                    session()->flash('success','Password Updated Successfully');
                    return redirect('user_login');
                }else{
                    session()->flash('error','Something Went Wrong');
                }
            }else{
                session()->flash('error','Password And Confirm Password Not Match');
            }
        }else{
            session()->flash('error','Input Data Missing');
        }
        return redirect()->back();
    }
}