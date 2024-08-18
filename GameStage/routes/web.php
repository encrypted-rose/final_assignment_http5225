<?php

use app\Models\Game;
use app\Models\Publisher;
use App\Http\Controllers\PublisherController;
use App\Http\Controllers\GameController;
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
    return view('welcome');
});

//publishers routes
Route::get(
    'publishers/trash/{id}',
    [PublisherController::class, 'trash']
)->name('publishers.trash');

Route::get(
    'publishers/trashed/',
    [PublisherController::class, 'trashed']
)->name('publishers.trashed');

Route::get(
    'publishers/restore',
    [PublisherController::class, 'restore']
)->name('students.restore');

//games route
Route::get(
    'games/trash/{id}',
    [GameController::class, 'trash']
)->name('games.trash');

Route::get(
    'games/trashed/',
    [GameController::class, 'trashed']
)->name('games.trashed');

Route::get(
    'games/restore',
    [GameController::class, 'restore']
)->name('games.restore');

Route::resource('publishers', PublisherController::class);

Route::resource('games', GameController::class);
