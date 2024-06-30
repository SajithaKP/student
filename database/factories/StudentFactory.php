<?php

namespace Database\Factories;

use App\Models\Student;
use App\Models\ParentModel;
use Illuminate\Database\Eloquent\Factories\Factory;

class StudentFactory extends Factory
{
    protected $model = Student::class;

    public function definition()
    {
        return [
            'name' => $this->faker->name,
            'fk_parent_id' => ParentModel::factory(), 
            'gender' => $this->faker->randomElement(['male', 'female']),
            'created_at' => now(),
            'updated_at' => now(),
        ];
    }
}
