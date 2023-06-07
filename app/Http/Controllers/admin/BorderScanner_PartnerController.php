<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\RegisterUser;
use App\Models\Country;
use App\Models\User;
use File;
use Hash;


class BorderScanner_PartnerController extends Controller
{

    public function border_scanner_partner(){
        if(!empty($_REQUEST['to_date']) && !empty($_REQUEST['from_date'])){
            $from_date = $_REQUEST['from_date'];
            $to_date = $_REQUEST['to_date'];
            $scanner_partner = User::where('role', '!=' , 'admin')->where('role', '!=' , 'agent')->whereBetween('created_at', [$from_date, $to_date])->get();
        }else{
            $scanner_partner = User::where('role', '!=' , 'admin')->where('role', '!=' , 'agent')->get();
        }
        return view('admin.border_scanner_partner',compact('scanner_partner'));
    }

    public function index(){
        $country = Country::all();
        return view('admin.add_border_scanner_partner',compact('country'));
    }

    public function add_user_border_scanner_partner(Request $request){
        $this->validate($request,[
            'email' => 'unique:users,email',
        ]);

        $add = new User;
        $add->name = $request->name;
        $add->email = $request->email;
        $add->number = $request->number;
        $add->view_password = $request->password;
        $add->password = Hash::make($request->password);
        $add->location = $request->location;
        $add->role = $request->role;
        $add->document_name = $request->document_name;

        if($request->hasFile('document_image')){
            $image = $request->file('document_image');
            $name = time().'.'.$image->getClientOriginalExtension();
            $destinationPath = public_path('/document_image');
            $image->move($destinationPath, $name);
            $add->document_image = $name;
        }

        if($request->hasFile('image')){
            $image = $request->file('image');
            $name = time().'.'.$image->getClientOriginalExtension();
            $destinationPath = public_path('/profile_image');
            $image->move($destinationPath, $name);
            $add->image = $name;
        }
        
        if($request->role != 'border_scanner'){
            $add->business_name = $request->business_name;
            $add->business_type = $request->business_type;

            if($request->hasFile('business_logo')){
                $image = $request->file('business_logo');
                $name = time().'.'.$image->getClientOriginalExtension();
                $destinationPath = public_path('/business_logo');
                $image->move($destinationPath, $name);
                $add->business_logo = $name;
            }
        }

        $add->country = $request->country;
        $add->state = $request->state;
        $add->city = $request->city;
        $add->address = $request->address;

        if($request->status == 'on'){
            $add->status = 1;
        }else{
            $add->status = 0;
        }
        if($add->save()){
            if($request->role == 'partner'){
                $add->assignRole('partner');
            }
            session()->flash('success','User created successfully');
            return redirect('border_scanner_partner');
        }else{
            session()->flash('error','Something went wrong');
            return redirect()->back();
        }
    }

    public function edit_scanner_partner($id){
        $edit_scanner_partner = User::where('id',$id)->first();
        $country = Country::all();
        return view('admin.edit_border_scanner_partner',compact('edit_scanner_partner','country'));
    }

    public function update_scanner_partner(Request $request,$id){

        $this->validate($request,[
            'email' => 'unique:users,email,'.$id,
        ]);

        $add = User::where('id',$id)->first();
        $add->name = $request->name;
        $add->email = $request->email;
        $add->number = $request->number;
        $add->location = $request->location;
        $add->role = $request->role;
        $add->document_name = $request->document_name;

        if($request->hasFile('document_image')){
            if(!empty($add->image)){
                $imagePath = public_path('document_image/'.$add->document_image);
                if(File::exists($imagePath)){
                    unlink($imagePath);
                }
            }

            $image = $request->file('document_image');
            $name = time().'.'.$image->getClientOriginalExtension();
            $destinationPath = public_path('/document_image');
            $image->move($destinationPath, $name);
            $add->document_image = $name;
        }

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
        if($request->role != 'border_scanner'){
            $add->business_name = $request->business_name;
            $add->business_type = $request->business_type;

            if($request->hasFile('business_logo')){
                if(!empty($add->business_logo)){
                    $imagePath = public_path('business_logo/'.$add->business_logo);
                    if(File::exists($imagePath)){
                        unlink($imagePath);
                    }
                }
                $image = $request->file('business_logo');
                $name = time().'.'.$image->getClientOriginalExtension();
                $destinationPath = public_path('/business_logo');
                $image->move($destinationPath, $name);
                $add->business_logo = $name;
            }
        }
        
        $add->country = $request->country;
        $add->state = $request->state;
        $add->city = $request->city;
        $add->address = $request->address;

        if($request->status == 'on'){
            $add->status = 1;
        }else{
            $add->status = 0;
        }
        if($add->save()){
            session()->flash('success','User updated successfully');
            return redirect('border_scanner_partner');
        }else{
            session()->flash('error','Something went wrong');
            return redirect()->back();
        }
    }
}