<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\RegisterUser;
use File;

class UserController extends Controller
{
    public function user_list(){
        if(!empty($_REQUEST['to_date']) && !empty($_REQUEST['from_date'])){
            $from_date = $_REQUEST['from_date'];
            $to_date = $_REQUEST['to_date'];
            $user = RegisterUser::whereBetween('created_at', [$from_date, $to_date])->orderBy('id','DESC')->get();
        }else{
            $user = RegisterUser::orderBy('id','DESC')->get();
        }
        return view('admin.user_list',compact('user'));
    }

    public function index(){
        return view('admin.add_user');
    }

    public function edit_user($id){
        $user = RegisterUser::where('id',$id)->first();
        return view('admin.edit_user',compact('user'));
    }

    public function add_user(Request $request){
        $check_email = RegisterUser::where('email',$request->email)->first();
        if(empty($check_email)){
            $add = new RegisterUser;
            if(!empty($request->email) && !empty($request->password) && !empty($request->gender) && !empty($request->number)){
                $add->name = $request->name;
                $add->gender = $request->gender;
                $add->number = $request->number;
                $add->address = $request->address;
                $add->email = $request->email;
                $add->dob = $request->dob;
                $add->password = $request->password;

                if($request->hasFile('image')){
                    $image = $request->file('image');
                    $name = time().'.'.$image->getClientOriginalExtension();
                    $destinationPath = public_path('/profile_image');
                    $image->move($destinationPath, $name);
                    $add->image = $name;
                }
                $add->role = $request->role;
                if($request->status == 'on'){
                    $request->status = 1;
                }else{
                    $request->status = 0;
                }
                if($add->save()){
                    session()->flash('success','User registered successfully');
                    return redirect('user_list');
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

    public function update_user(Request $request,$id){
        
        $this->validate($request,[
            'email' => 'unique:register_user,email,'.$id,
        ]);

        $add = RegisterUser::where('id',$id)->first();
        if(!empty($request->email) && !empty($request->gender) && !empty($request->number)){
            $add->name = $request->name;
            $add->gender = $request->gender;
            $add->number = $request->number;
            $add->address = $request->address;
            $add->dob = $request->dob;
            $add->email = $request->email;
            if($request->hasFile('image')){
                if(!empty($add->image)){
                    $imagePath = public_path('profile_image/'.$add->image);
                    if(File::exists($imagePath)){
                        unlink($imagePath);
                    }
                }
                $image = $request->file('image');
                $name = time().'.'.$image->getClientOriginalExtension();
                $destinationPath = public_path('/profile_image');
                $image->move($destinationPath, $name);
                $add->image = $name;
            }
            $add->role = $request->role;
            if($request->status == 'on'){
                $add->status = 1;
            }else{
                $add->status = 0;
            }
            if($add->save()){
                session()->flash('success','User registered successfully');
                return redirect('user_list');
            }else{
                session()->flash('error','Something went wrong');
                return redirect()->back();
            }
        }else{
            session()->flash('error','Input data missing');
            return redirect()->back();
        }
    }
}