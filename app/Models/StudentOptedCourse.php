<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class StudentOptedCourse extends Model
{
    use HasFactory;

    protected $table = 'tbl_student_opted_course';

    protected $fillable = [
        'fk_student_id',
        'fk_course_id',
        'is_active',
    ];

    public function student()
    {
        return $this->belongsTo(Student::class, 'fk_student_id', 'student_id');
    }

    public function course()
    {
        return $this->belongsTo(Course::class, 'fk_course_id', 'course_id');
    }
    
}
