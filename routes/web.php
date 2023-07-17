<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return  redirect('user_login');
});
Auth::routes();

Route::get('/home', function () {
    return  view('admin.home');
});
// HomeController
Route::group(['middleware' => ['role:admin']], function () {

    Route::get('/add_arrival_crossing', [App\Http\Controllers\admin\ArrivalCrossingPointController::class, 'index']);
    Route::get('/manage_arrival', [App\Http\Controllers\admin\ArrivalCrossingPointController::class, 'manage_arrival']);
    Route::post('/arrival_crossing_insert', [App\Http\Controllers\admin\ArrivalCrossingPointController::class, 'arrival_crossing_insert']);
    Route::get('/edit_manage_arrival/{id}', [App\Http\Controllers\admin\ArrivalCrossingPointController::class, 'edit_manage_arrival']);
    Route::post('/arrival_crossing_update/{id}', [App\Http\Controllers\admin\ArrivalCrossingPointController::class, 'arrival_crossing_update']);

    Route::get('/dashbord', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
    // SendMailController
    Route::get('/forgot_password', [App\Http\Controllers\SendMailController::class, 'forgot_password']);
    Route::post('/sendOTP_and_generator_otp',[App\Http\Controllers\SendMailController::class, 'sendOTP_and_generator_otp']);
    Route::get('/otp_verify/{id}',[App\Http\Controllers\SendMailController::class, 'otp_verify']);
    Route::post('/check_otp',[App\Http\Controllers\SendMailController::class, 'check_otp']);
    Route::get('/update_password/{id}',[App\Http\Controllers\SendMailController::class, 'update_password']);
    Route::post('/update_pass',[App\Http\Controllers\SendMailController::class, 'update_pass']);

    // PlacesController
    Route::get('/places', [App\Http\Controllers\admin\PlacesController::class, 'index'])->middleware("auth");
    Route::get('/add_places', [App\Http\Controllers\admin\PlacesController::class, 'add_places'])->middleware("auth");
    Route::post('/importCsv', [App\Http\Controllers\admin\PlacesController::class, 'importCsv'])->middleware("auth");
    Route::post('/insert_place', [App\Http\Controllers\admin\PlacesController::class, 'insert_place'])->middleware("auth");
    Route::post('/delete_place', [App\Http\Controllers\admin\PlacesController::class, 'delete_place'])->middleware("auth");
    Route::get('/edit_places/{id}', [App\Http\Controllers\admin\PlacesController::class, 'edit_places'])->middleware("auth");
    Route::post('/update_place/{id}', [App\Http\Controllers\admin\PlacesController::class, 'update_place'])->middleware("auth");
    Route::get('/add_people_in_place/{id}', [App\Http\Controllers\admin\PlacesController::class, 'add_people_in_place'])->middleware("auth");
    Route::post('/insert_people_in_place', [App\Http\Controllers\admin\PlacesController::class, 'insert_people_in_place'])->middleware("auth");



    // UserController
    Route::get('/user_list', [App\Http\Controllers\admin\UserController::class, 'user_list'])->middleware("auth");
    Route::get('/add_user', [App\Http\Controllers\admin\UserController::class, 'index'])->middleware("auth");
    Route::post('/insert_user', [App\Http\Controllers\admin\UserController::class, 'add_user'])->middleware("auth");
    Route::get('/edit_user/{id}', [App\Http\Controllers\admin\UserController::class, 'edit_user'])->middleware("auth");
    Route::post('/update_user/{id}', [App\Http\Controllers\admin\UserController::class, 'update_user'])->middleware("auth");

    // BorderScanner_PartnerController
    Route::get('/border_scanner_partner', [App\Http\Controllers\admin\BorderScanner_PartnerController::class, 'border_scanner_partner'])->middleware("auth");
    Route::get('/add_border_scanner_partner', [App\Http\Controllers\admin\BorderScanner_PartnerController::class, 'index'])->middleware("auth");
    Route::post('/insert_border_scanner_partner', [App\Http\Controllers\admin\BorderScanner_PartnerController::class, 'add_user_border_scanner_partner'])->middleware("auth");
    Route::get('/edit_scanner_partner/{id}', [App\Http\Controllers\admin\BorderScanner_PartnerController::class, 'edit_scanner_partner'])->middleware("auth");
    Route::post('/update_scanner_partner/{id}', [App\Http\Controllers\admin\BorderScanner_PartnerController::class, 'update_scanner_partner'])->middleware("auth");

    // QrCodeController
    Route::get('/qrcode/{id}', [App\Http\Controllers\QrCodeController::class, 'index']);

    // TripController
    Route::get('/trip', [App\Http\Controllers\admin\TripController::class, 'index'])->middleware("auth");
    Route::get('/view_trip_peopel/{id}', [App\Http\Controllers\admin\TripController::class, 'view_trip_peopel'])->middleware("auth");
    Route::get('/view_people_individual/{id}', [App\Http\Controllers\admin\TripController::class, 'view_people_individual'])->middleware("auth");

    // PaymentController
    Route::get('/payment_list', [App\Http\Controllers\admin\PaymentController::class, 'payment_list'])->middleware("auth");

    // LogsController
    Route::get('/user_logs', [App\Http\Controllers\admin\LogsController::class, 'user_logs'])->middleware("auth");
    Route::get('/border_patner_logs', [App\Http\Controllers\admin\LogsController::class, 'border_patner_logs'])->middleware("auth");
    Route::get('/scan_logs_list', [App\Http\Controllers\admin\LogsController::class, 'scan_logs'])->middleware("auth");
});

Route::group(['middleware' => ['role:partner']], function () {

    Route::get('/group', [App\Http\Controllers\admin\GroupController::class, 'group'])->middleware("auth");
    Route::get('/add_group', [App\Http\Controllers\admin\GroupController::class, 'add_group'])->middleware("auth");
    Route::post('/inser_group', [App\Http\Controllers\admin\GroupController::class, 'inser_group'])->middleware("auth");
    Route::get('/edit_group/{id}', [App\Http\Controllers\admin\GroupController::class, 'edit_group'])->middleware("auth");
    Route::post('/update_group/{id}', [App\Http\Controllers\admin\GroupController::class, 'update_group'])->middleware("auth");

    // AgentController
    Route::get('/agent', [App\Http\Controllers\admin\AgentController::class, 'index'])->middleware("auth");
    Route::get('/add_agent', [App\Http\Controllers\admin\AgentController::class, 'add_agent'])->middleware("auth");
    Route::get('/edit_agent/{id}', [App\Http\Controllers\admin\AgentController::class, 'edit_agent'])->middleware("auth");
    Route::post('/update_agent/{id}', [App\Http\Controllers\admin\AgentController::class, 'update_agent'])->middleware("auth");
    Route::post('/insert_agent', [App\Http\Controllers\admin\AgentController::class, 'insert_agent'])->middleware("auth");
    

    // group people opration
    Route::post('/add_group_people', [App\Http\Controllers\admin\GroupController::class, 'add_group_people'])->middleware("auth");

    Route::get('/group_wise_people/{id}', [App\Http\Controllers\admin\GroupController::class, 'group_wise_people'])->middleware("auth");

    Route::get('/edit_group_wise_people/{id}/{group_id}', [App\Http\Controllers\admin\GroupController::class, 'edit_group_wise_people'])->middleware("auth");

    Route::post('/update_group_people/{id}', [App\Http\Controllers\admin\GroupController::class, 'update_group_people'])->middleware("auth");

    Route::get('/add_group_wise_people/{id}', [App\Http\Controllers\admin\GroupController::class, 'add_group_wise_people'])->middleware("auth");
});

// Route::group(['prefix' => 'operator','middleware' => ['role:operator']], function () {
//     // GroupController
//     Route::get('/group', [App\Http\Controllers\admin\GroupController::class, 'group'])->middleware("auth");
//     Route::get('/add_group', [App\Http\Controllers\admin\GroupController::class, 'add_group'])->middleware("auth");
//     Route::post('/inser_group', [App\Http\Controllers\admin\GroupController::class, 'inser_group'])->middleware("auth");
//     Route::get('/edit_group/{id}', [App\Http\Controllers\admin\GroupController::class, 'edit_group'])->middleware("auth");
//     Route::post('/update_group/{id}', [App\Http\Controllers\admin\GroupController::class, 'update_group'])->middleware("auth");
// });

Route::group(['middleware' => ['role:agent']], function () {
    
    // GroupController
    // Route::get('/group', [App\Http\Controllers\admin\GroupController::class, 'group'])->middleware("auth");
    // Route::get('/add_group', [App\Http\Controllers\admin\GroupController::class, 'add_group'])->middleware("auth");
    // Route::post('/inser_group', [App\Http\Controllers\admin\GroupController::class, 'inser_group'])->middleware("auth");
    // Route::get('/edit_group/{id}', [App\Http\Controllers\admin\GroupController::class, 'edit_group'])->middleware("auth");
    // Route::post('/update_group/{id}', [App\Http\Controllers\admin\GroupController::class, 'update_group'])->middleware("auth");

});

// front side route start

Route::get('/user_payment_list', [App\Http\Controllers\admin\PaymentController::class, 'get_payment_list_frontside'])->middleware("checklogin");

// login controller
Route::get('/user_login', [App\Http\Controllers\LoginController::class, 'login_view']);
Route::get('/user_logout', [App\Http\Controllers\LoginController::class, 'user_logout']);
Route::post('/check_user_login', [App\Http\Controllers\LoginController::class, 'check_user_login']);

// RegisterController
Route::get('/register_user', [App\Http\Controllers\RegisterController::class, 'register_user']);
Route::get('/profile', [App\Http\Controllers\RegisterController::class, 'profile'])->middleware("checklogin");
Route::post('/insert_user_data', [App\Http\Controllers\RegisterController::class, 'insert_user_data']);
Route::post('/update_user_data', [App\Http\Controllers\RegisterController::class, 'update_user_data']);

// TripController
Route::get('/trips', [App\Http\Controllers\TripController::class, 'trip'])->middleware("checklogin");
Route::post('/add_trip', [App\Http\Controllers\TripController::class, 'add_trip'])->middleware("checklogin");
Route::post('/add_trip_TripPeople', [App\Http\Controllers\TripController::class, 'add_trip_TripPeople'])->middleware("checklogin");

Route::get('/paymentpage/{id}', [App\Http\Controllers\TripController::class, 'paymentpage'])->middleware("checklogin");
Route::post('/get_trip_wise_people_datas', [App\Http\Controllers\TripController::class, 'get_trip_wise_people_datas'])->middleware("checklogin");

Route::get('/get_trip/{id}', [App\Http\Controllers\TripController::class, 'get_trip'])->middleware("checklogin");
Route::get('/edit_trip_people/{id}', [App\Http\Controllers\TripController::class, 'edit_trip_people'])->middleware("checklogin");
Route::get('/add_trip_wise_people/{id}', [App\Http\Controllers\TripController::class, 'add_trip_wise_people'])->middleware("checklogin");
Route::get('/baecode', [App\Http\Controllers\TripController::class, 'baecode'])->middleware("checklogin");
Route::post('/update_trip_status', [App\Http\Controllers\TripController::class, 'update_trip_status'])->middleware("checklogin");

// HomesController
Route::get('/homes', [App\Http\Controllers\HomesController::class, 'homes'])->middleware("checklogin");

// TripForm
Route::get('/trip_form/{type}/{trip_id}/{user_id}', [App\Http\Controllers\TripForm::class, 'trip_form']);
Route::post('/insert_user_feedback', [App\Http\Controllers\TripForm::class, 'insert_user_feedback']);

Route::get('/view_feedback_data', [App\Http\Controllers\TripForm::class, 'admin_view_feedback_data'])->middleware("auth");
Route::get('/view_feedback_details_data/{id}', [App\Http\Controllers\TripForm::class, 'admin_view_feedback_details_data'])->middleware("auth");