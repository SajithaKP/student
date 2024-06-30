<?php

//namespace  App\Http\Controllers;
use Illuminate\Support\Facades\Route;
//use App\Http\Controllers\FirstController;
use App\Http\Controllers\StudentController;
use App\Http\Controllers\StudentOptedCourseController;

//Route::get('/', 'FirstController@homepage'); 
//Route::get('/', [FirstController::class,'homepage'])->name('home');
Route::get('/', [StudentController::class, 'index']);
//Route::post('/students/{id}/toggleStatus', [StudentController::class, 'toggleStatus']);
Route::post('/update-active-status/{id}', [StudentOptedCourseController::class, 'updateActiveStatus'])->name('update.active.status');