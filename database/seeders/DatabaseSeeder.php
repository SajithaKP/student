<?php

namespace Database\Seeders;

use Database\Factories\ParentModelFactory;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call([
            CourseTableSeeder::class,
            ParentModelFactory::class,
            StudentSeeder::class,
            StudentOptedCourseSeeder::class,
        ]);
    }
}
