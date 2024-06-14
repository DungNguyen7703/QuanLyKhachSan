<?php

use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('templates.index');
})->name('index');

Route::get('/admin', function () {
    return view('templates/admin/dashboard');
})->middleware(['auth', 'verified'])->name('dasboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__ . '/auth.php';

// Route::middleware(['auth', 'role:admin'])->group(function () {
//     Route::get('/dashboard', function () {
//         return view('dashboard');
//     });
// });

Route::middleware(['auth', 'role:customer'])->group(function () {
    Route::get('/welcome', function () {
        return view('templates/index');
    });
});
Route::get('/admin/dashboard', function () {
    return view('templates/admin/dashboard');
});
Route::get('/admin/account_list', function () {
    return view('templates/admin/account_list');
});
Route::get('/admin/profile', function () {
    return view('templates/admin/profile');
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