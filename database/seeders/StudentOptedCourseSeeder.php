<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\StudentOptedCourse;
use App\Models\course;

class StudentOptedCourseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $studentCount = 20;
        //StudentOptedCourse::factory()->count(10)->create();
        $courses = Course::all();

        foreach ($courses as $course) {
            for ($i = 0; $i < $studentCount; $i++) {
                StudentOptedCourse::factory()->create([
                    'fk_course_id' => $course->course_id,
                ]);
            }
        }
    }
}
