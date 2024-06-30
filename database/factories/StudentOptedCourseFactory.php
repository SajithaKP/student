<?php

namespace Database\Factories;

use App\Models\StudentOptedCourse;
use App\Models\Student;
use App\Models\Course;
use Illuminate\Database\Eloquent\Factories\Factory;

class StudentOptedCourseFactory extends Factory
{
    protected $model = StudentOptedCourse::class;

    public function definition()
    {
        $course = Course::inRandomOrder()->first();
        if (!$course) {
            throw new \Exception('No students or courses available to seed StudentOptedCourse.');
        }
        return [
            'fk_student_id' => Student::factory(), 
            'fk_course_id' => $course->course_id,
            'is_active' => $this->faker->boolean,
            'created_at' => now(),
            'updated_at' => now(),
        ];
    }
}
