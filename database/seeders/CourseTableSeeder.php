<?php

namespace Database\Seeders;
use App\Models\Course;

use Illuminate\Database\Seeder;

class CourseTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Course::create([
          'course'=>'English',
          'department'=>'English'
        ]);
        
        Course::create([
            'course'=>'Mathematics',
            'department'=>'Maths'
          ]);
          
        Course::create([
            'course'=>'Science',
            'department'=>'Science'
          ]);
          
        Course::create([
            'course'=>'Economics',
            'department'=>'Science'
          ]);
    }
}
