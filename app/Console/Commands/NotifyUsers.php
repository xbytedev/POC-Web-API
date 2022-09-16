<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;

class NotifyUsers extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'command:name';

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
    public function handle() {
        $users = User::whereNotNull()->get();
        foreach($users as $user) {
            $diffInDays = $user->deadline_date->diff(Carbon::now())->days;
            $user->notify("Your deadline is in $diffInDays day!");
        }
    }
}
