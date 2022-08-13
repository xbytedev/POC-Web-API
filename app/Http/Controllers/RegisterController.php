<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\RegisterUser;

use File;

class RegisterController extends Controller
{
    public function register_user(){
        return view('signup');
    }

    public function insert_user_data(Request $request){
        $check_email = RegisterUser::where('email',$request->email)->first();
        if(empty($check_email)){
            $add = new RegisterUser;
            if(!empty($request->email) && !empty($request->password) && !empty($request->gender) && !empty($request->number)){
                $add->name = $request->name;
                $add->gender = $request->gender;
                $add->number = $request->number;
                $add->address = $request->address;
                $add->email = $request->email;
                $add->dob = date('Y-m-d', strtotime($request->dob));
                $add->password = $request->password;
                if($request->hasFile('image')){
                    $image = $request->file('image');
                    $name = time().'.'.$image->getClientOriginalExtension();
                    $destinationPath = public_path('/profile_image');
                    $image->move($destinationPath, $name);
                    $add->image = $name;
                }
                $add->role = 'enduser';
                if($add->save()){
                    session_start();
                    $data = RegisterUser::where('email',$add->email)->first();
                    $_SESSION['user'] = $data;
                    session()->flash('success','User registered successfully');
                    return redirect('homes');
                }else{
                    session()->flash('error','Something went wrong');
                    return redirect()->back();
                }
            }else{
                session()->flash('error','Input data missing');
                return redirect()->back();
            }
        }else{
            session()->flash('error','User already exists');
            return redirect()->back();
        } 
    }

    public function update_user_data(Request $request){
        $add = RegisterUser::where('email',$request->email)->first();
        if(!empty($add)){
            if(!empty($request->email) && !empty($request->gender) && !empty($request->number)){
                $add->name = $request->name;
                $add->gender = $request->gender;
                $add->number = $request->number;
                $add->address = $request->address;
                $add->email = $request->email;
                $add->dob = date('Y-m-d', strtotime($request->dob));
                if($request->hasFile('image')){

                    $imagePath = public_path('profile_image/'.$add->image);
                    if(File::exists($imagePath)){
                        unlink($imagePath);
                    }

                    $image = $request->file('image');
                    $name = time().'.'.$image->getClientOriginalExtension();
                    $destinationPath = public_path('/profile_image');
                    $image->move($destinationPath, $name);
                    $add->image = $name;
                }
                $add->role = 'enduser';
                if($add->save()){
                    session_start();
                    unset($_SESSION['user']);
                    $data = RegisterUser::where('email',$request->email)->first();
                    $_SESSION['user'] = $data;
                    session()->flash('success','Profile updated successfully');
                    return redirect()->back();
                }else{
                    session()->flash('error','Something went wrong');
                    return redirect()->back();
                }
            }else{
                session()->flash('error','Input data missing');
                return redirect()->back();
            }
        }else{
            session()->flash('error','E-mail not found');
            return redirect()->back();
        }
    }

    public function profile()
    {
        return view('profile');
    }

}