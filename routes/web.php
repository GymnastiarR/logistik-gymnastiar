<?php

use App\Http\Controllers\GoodsController;
use App\Http\Controllers\InboundController;
use App\Http\Controllers\OutboundController;
use App\Http\Controllers\ProfileController;
use Illuminate\Http\RedirectResponse;
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

Route::get('/', function (): RedirectResponse {
    return redirect()->route('goods.index');
});

Route::middleware(['auth', 'verified'])->group(function () {
    Route::get('/goods', [GoodsController::class, 'index'])->name('goods.index');
    Route::post('/goods', [GoodsController::class, 'store'])->name('goods.store');
    Route::put('/goods/{goods}', [GoodsController::class, 'update'])->name('goods.update');
    Route::delete('/goods/{goods}', [GoodsController::class, 'destroy'])->name('goods.update');

    Route::get('/inbound', [InboundController::class, 'index'])->name('inbound.index');
    Route::post('/inbound', [InboundController::class, 'store'])->name('inbound.store');
    Route::put('/inbound/{transaction}', [InboundController::class, 'update'])->name('inbound.update');
    Route::delete('/inbound/{transaction}', [InboundController::class, 'destroy'])->name('inbound.destroy');

    Route::get('/outbound', [OutboundController::class, 'index'])->name('outbound.index');
    Route::post('/outbound', [OutboundController::class, 'store'])->name('outbound.store');
    Route::put('/outbound/{transaction}', [OutboundController::class, 'update'])->name('outbound.update');
    Route::delete('/outbound/{transaction}', [OutboundController::class, 'destroy'])->name('outbound.destroy');
});

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__ . '/auth.php';
