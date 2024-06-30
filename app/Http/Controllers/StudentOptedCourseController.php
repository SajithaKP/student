<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\StudentOptedCourse;

class StudentOptedCourseController extends Controller
{
    public function updateActiveStatus(Request $request, $id)
    {
        $course = StudentOptedCourse::findOrFail($id);
        $course->is_active = $request->is_active;
        $course->save();

        return response()->json(['message' => 'Status updated successfully']);
    }
}
