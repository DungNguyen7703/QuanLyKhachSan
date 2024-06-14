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
    return view('templates/index');
});
Route::get('/rooms', function () {
    return view('templates/rooms');
});
Route::get('/about', function () {
    return view('templates/about');
});
Route::get('/contact', function () {
    return view('templates/contact');
});
Route::get('/blog', function () {
    return view('templates/blog');
});
Route::get('/booking', function () {
    return view('templates/booking');
});