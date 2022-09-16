<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class SendTripForm extends Mailable
{
    use Queueable, SerializesModels;

    public $details,$trip_id,$user_type;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($details,$trip_id,$user_type)
    {
        $this->details = $details;
        $this->trip_id = $trip_id;
        $this->user_type = $user_type;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->subject('Form')
                    ->view('email.send_trip_form');
    }
}