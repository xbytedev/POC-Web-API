<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Country;
use File;
use Auth;
use Hash;

class AgentController extends Controller
{
    public function index()
    {
        if(!empty($_REQUEST['to_date']) && !empty($_REQUEST['from_date'])){
            $from_date = $_REQUEST['from_date'];
            $to_date = $_REQUEST['to_date'];
            $agent = User::with('created_by_name')->where('created_by',Auth::user()->id)->where('role','agent')->orWhere('role','operator')->whereBetween('created_at', [$from_date, $to_date])->get();
        }else{
            $agent = User::with('created_by_name')->where('created_by',Auth::user()->id)->orWhere('role','operator')->where('role','agent')->get();
        }
        return view('admin.agent',compact('agent'));
    }

    public function add_agent()
    {
        $country = Country::all();
        return view('admin.add_agent',compact('country'));
    }

    public function insert_agent(Request $request){

        $this->validate($request,[
            'email' => 'unique:users,email',
        ]);
        
        $add = new User;
        $add->name = $request->name;
        $add->email = $request->email;
        $add->number = $request->number;
        $add->view_password = $request->password;
        $add->password =  Hash::make($request->password);
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
        $add->created_by = Auth::user()->id;
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
            if($request->role == 'agent'){
                $add->assignRole('agent');
            }else{
                $add->assignRole('operator');
            }
            session()->flash('success','User created successfully');
            return redirect('agent');
        }else{
            session()->flash('error','Something went wrong');
            return redirect()->back();
        }
    }

    public function update_agent(Request $request,$id){

        $this->validate($request,[
            'email' => 'unique:users,email,'.$id,
        ]);

        $add = User::where('id',$id)->first();
        $add->name = $request->name;
        $add->email = $request->email;
        $add->number = $request->number;
        $add->view_password = $request->password;
        $add->password =  Hash::make($request->password);
        $add->location = $request->location;
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

        $add->created_by = Auth::user()->id;
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
            $add->assignRole('agent');
            session()->flash('success','User updated successfully');
            return redirect('agent');
        }else{
            session()->flash('error','Something went wrong');
            return redirect()->back();
        }
    }

    public function edit_agent($id){
        $edit_agent = User::with('created_by_name')->where('role','agent')->where('id',$id)->first();
        $country = Country::all();
        return view('admin.edit_agent',compact('edit_agent','country'));
    }
    
}