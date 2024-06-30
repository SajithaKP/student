<?php

namespace App\Http\Controllers;
use App\Models\Student;

class FirstController extends Controller
{
    public function homepage(){
        $students =  Student::all();
        //return $students;
        return view('welcome',compact('students'));
    }
}
