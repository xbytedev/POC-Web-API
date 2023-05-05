<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class AgentController extends Controller
{
    public function index()
    {
        return view('admin.agent');
    }

    public function add_agent()
    {
        return view('admin.add_agent');
    }

    
    public function insert_agent(Request $request){
        $this->validate($request,[
            'email' => 'unique:border_scanner_partner,email',
        ]);

        $add = new BorderScannerPartner;
        $add->name = $request->name;
        $add->email = $request->email;
        $add->number = $request->number;
        $add->password = $request->password;
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
            session()->flash('success','User created successfully');
            return redirect('border_scanner_partner');
        }else{
            session()->flash('error','Something went wrong');
            return redirect()->back();
        }
    }

}