<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\UserLogs;
use App\Models\RegisterUser;

class LoginController extends Controller
{
    public function login_view(){
        return view('login');
    }
    
    public function check_user_login(Request $request){
        if(!empty($request->password) && !empty($request->email)){
            $check_email = RegisterUser::where('email',$request->email)->first();
            if(!empty($check_email)){

                $check_password = RegisterUser::where('email',$request->email)->where('password',$request->password)->first();
                if(!empty($check_password)){
                    if($check_password->status == 1){
                        $add = new UserLogs;
                        $add->user_id = $check_password->id;                    
                        $add->save();
                        session_start();
                        $_SESSION['user'] = $check_password;
                        session()->flash('success','User verify successfully');
                        return redirect('homes');
                    }else{
                        session()->flash('error','User status is inactive');
                        return redirect()->back();
                    }
                }else{
                    session()->flash('error','Invalid password');
                    return redirect()->back();
                }
            }else{
                session()->flash('error','User not found');
                return redirect()->back();
            }
        }else{
            session()->flash('error','Input data missing');
            return redirect()->back();
        }
    }

    public function user_logout(Request $request){
        session_start();
        unset($_SESSION['user']);
        return redirect('user_login');
    }

}