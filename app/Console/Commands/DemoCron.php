<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Models\Trip;
use App\Models\RegisterUser;
use App\Models\TripPeople;
use Mail;
class DemoCron extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'demo:cron';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        
        $details_date = date('Y-m-d');
        $end_date = date('Y-m-d', strtotime('-1 day', strtotime($details_date)));
        
        $get_end_trip = Trip::where('trip_end_date',$end_date)->get();

        foreach($get_end_trip as $get_end_trip_data){
            $get_created_by_user = RegisterUser::where('id',$get_end_trip_data->created_by)->first();
            $details = $get_created_by_user;
            $trip_id = $get_end_trip_data->id;
            $user_type = "created_By";
            Mail::to($get_created_by_user->email)->send(new \App\Mail\SendTripForm($details,$trip_id,$user_type));
            $get_trip_people = TripPeople::where('trip_id',$get_end_trip_data->id)->get();

            foreach($get_trip_people as $get_trip_people_data){
                $details = $get_trip_people_data;
                $trip_id = $get_end_trip_data->id;
                $user_type = "user";
                Mail::to($get_trip_people_data->contacts_email)->send(new \App\Mail\SendTripForm($details,$trip_id,$user_type));
            }
            
        }

        /*
           Write your database logic we bellow:
           Item::create(['name'=>'hello new']);
        */
    }
}