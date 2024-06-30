<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Student;

class StudentController extends Controller
{
    public function index()
    {
        $students = Student::with('parent', 'optedCourses')->take(12)->get();
        return view('students.index', compact('students'));
    }

    public function toggleStatus($id)
    {
        $student = Student::findOrFail($id);
        $student->enabled = !$student->enabled;
        $student->save();

        return response()->json(['success' => true]);
    }
}
