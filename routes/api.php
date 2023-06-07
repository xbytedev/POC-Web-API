<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::post('/delete_group', [App\Http\Controllers\ApiController::class, 'delete_group']);
Route::post('/register_user', [App\Http\Controllers\ApiController::class, 'register_user']);
Route::post('/edit_group', [App\Http\Controllers\ApiController::class, 'edit_group']);
Route::post('/check_user_login', [App\Http\Controllers\ApiController::class, 'check_user_login']);
Route::get('/get_user_data', [App\Http\Controllers\ApiController::class, 'get_user_data']);
Route::post('/get_individual_user', [App\Http\Controllers\ApiController::class, 'get_individual_user']);
Route::post('/add_trip_TripPeople', [App\Http\Controllers\ApiController::class, 'add_trip_TripPeople']);
Route::post('/add_trip', [App\Http\Controllers\ApiController::class, 'add_trip']);
Route::get('/country_list', [App\Http\Controllers\ApiController::class, 'country_list']);
Route::get('/document_type', [App\Http\Controllers\ApiController::class, 'document_type']);
Route::get('/motivation_of_trip', [App\Http\Controllers\ApiController::class, 'motivation_of_trip']);
Route::get('/mean_of_transport', [App\Http\Controllers\ApiController::class, 'mean_of_transport']);
Route::post('/get_trip', [App\Http\Controllers\ApiController::class, 'get_trip']);
Route::post('/update_user_data', [App\Http\Controllers\ApiController::class, 'update_user']);
Route::post('/login_border_scanner_partner', [App\Http\Controllers\ApiController::class, 'login_border_scanner_partner']);
Route::post('/payment', [App\Http\Controllers\ApiController::class, 'payment']);
Route::post('/get_user_document', [App\Http\Controllers\ApiController::class, 'get_user_document']);
Route::post('/check_payment', [App\Http\Controllers\ApiController::class, 'check_payment']);
Route::post('/get_user_wise_trip', [App\Http\Controllers\ApiController::class, 'get_user_wise_trip']);
Route::post('/get_trip_card', [App\Http\Controllers\ApiController::class, 'get_trip_card']);
Route::get('/arrival_crossing_point', [App\Http\Controllers\ApiController::class, 'arrival_crossing_point']);
Route::get('/departur_crossing_point', [App\Http\Controllers\ApiController::class, 'departur_crossing_point']);
Route::post('/get_trip_wise_peoples', [App\Http\Controllers\ApiController::class, 'get_trip_wise_peoples']);
Route::post('/get_payment_list', [App\Http\Controllers\ApiController::class, 'get_payment_list']);
Route::post('/get_partner_payment_list', [App\Http\Controllers\ApiController::class, 'get_partner_payment_list']);
Route::post('/get_trip_wise_peoples_all', [App\Http\Controllers\ApiController::class, 'get_trip_wise_peoples_all']);
Route::post('/check_email_for_password', [App\Http\Controllers\ApiController::class, 'check_email_for_password']);
Route::post('/update_enduser_password', [App\Http\Controllers\ApiController::class, 'update_enduser_password']);
Route::post('/border_scanner_partner_login', [App\Http\Controllers\ApiController::class, 'border_scanner_partner_login']);
Route::post('/user_logs', [App\Http\Controllers\ApiCoantroller::class, 'user_logs']);
Route::post('/add_trip_tripPeople_as_draft', [App\Http\Controllers\ApiController::class, 'add_trip_tripPeople_as_draft']);
Route::post('/get_draft_trip_wise_peoples', [App\Http\Controllers\ApiController::class, 'get_draft_trip_wise_peoples']);
Route::post('/check_email_and_sendOTP', [App\Http\Controllers\ApiController::class, 'check_email_and_sendOTP']);
Route::post('/check_otp', [App\Http\Controllers\ApiController::class, 'check_otp']);
Route::post('/border_scanner_partner_check_otp', [App\Http\Controllers\ApiController::class, 'border_scanner_partner_check_otp']);
Route::post('/send_payment_receipt_mail', [App\Http\Controllers\ApiController::class, 'send_payment_receipt_mail']);
Route::post('/scan_logs', [App\Http\Controllers\ApiController::class, 'scan_logs']);
Route::post('/create_group', [App\Http\Controllers\ApiController::class, 'create_group']);
Route::post('/group_list', [App\Http\Controllers\ApiController::class, 'group_list']);
Route::post('/resend_login_otp', [App\Http\Controllers\ApiController::class, 'resend_login_otp']);
Route::post('/add_group_people', [App\Http\Controllers\ApiController::class, 'add_group_people']);