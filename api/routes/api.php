<?php
namespace App\Http\Controllers\Api;

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

Route::group(['middleware' => 'api',], function ($router) {

    Route::get('/', function(){
        return response()->json(['message' => "Api Barbearia", "status" => "Conected"]);
    });

    Route::fallback(function(){
        return response()->json(['message' => "Route not found", "status" => "Conected"]);
    });

    Route::post('login', [JwtAuthController::class, 'login']);
    Route::post('register', [JwtAuthController::class, 'register']);
    Route::post('logout', [JwtAuthController::class, 'logout']);
    Route::post('refresh', [JwtAuthController::class, 'refresh']);
    Route::post('me', [JwtAuthController::class, 'userProfile']);

    Route::resource('companies', ApiCompanyController::class)->except([
        'create', 'edit'
    ]);

    Route::resource('employees', ApiEmployeeController::class)->except([
        'create', 'edit'
    ]);

    Route::resource('schedules', ApiScheduleController::class)->except([
        'create', 'edit'
    ]);

    Route::resource('services', ApiServiceController::class)->except([
        'create', 'edit'
    ]);

});