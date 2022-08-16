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

// HomeController
Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

// UserController
Route::get('/user_list', [App\Http\Controllers\admin\UserController::class, 'user_list']);
Route::get('/add_user', [App\Http\Controllers\admin\UserController::class, 'index']);
Route::post('/insert_user', [App\Http\Controllers\admin\UserController::class, 'add_user']);
Route::get('/edit_user/{id}', [App\Http\Controllers\admin\UserController::class, 'edit_user']);
Route::post('/update_user/{id}', [App\Http\Controllers\admin\UserController::class, 'update_user']);

// BorderScanner_PartnerController
Route::get('/border_scanner_partner', [App\Http\Controllers\admin\BorderScanner_PartnerController::class, 'border_scanner_partner']);
Route::get('/add_border_scanner_partner', [App\Http\Controllers\admin\BorderScanner_PartnerController::class, 'index']);
Route::post('/insert_border_scanner_partner', [App\Http\Controllers\admin\BorderScanner_PartnerController::class, 'add_user_border_scanner_partner']);
Route::get('/edit_scanner_partner/{id}', [App\Http\Controllers\admin\BorderScanner_PartnerController::class, 'edit_scanner_partner']);
Route::post('/update_scanner_partner/{id}', [App\Http\Controllers\admin\BorderScanner_PartnerController::class, 'update_scanner_partner']);

// QrCodeController
Route::get('/qrcode/{id}', [App\Http\Controllers\QrCodeController::class, 'index']);

// TripController
Route::get('/trip', [App\Http\Controllers\admin\TripController::class, 'index']);
Route::get('/view_trip_peopel/{id}', [App\Http\Controllers\admin\TripController::class, 'view_trip_peopel']);
Route::get('/view_people_individual/{id}', [App\Http\Controllers\admin\TripController::class, 'view_people_individual']);

// PaymentController
Route::get('/payment_list', [App\Http\Controllers\admin\PaymentController::class, 'payment_list']);
Route::get('/user_payment_list', [App\Http\Controllers\admin\PaymentController::class, 'get_payment_list_frontside']);

// LogsController
Route::get('/user_logs', [App\Http\Controllers\admin\LogsController::class, 'user_logs']);
Route::get('/border_patner_logs', [App\Http\Controllers\admin\LogsController::class, 'border_patner_logs']);


// front side route start 

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


// HomesController
Route::get('/homes', [App\Http\Controllers\HomesController::class, 'homes'])->middleware("checklogin");