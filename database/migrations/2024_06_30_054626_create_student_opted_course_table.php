<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateStudentOptedCourseTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tbl_student_opted_course', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('fk_student_id');
            $table->unsignedBigInteger('fk_course_id');
            $table->boolean('is_active')->default(true);
            $table->timestamps();

            // Adding the foreign keys
            $table->foreign('fk_student_id')->references('student_id')->on('students')->onDelete('cascade');
            $table->foreign('fk_course_id')->references('course_id')->on('course')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tbl_student_opted_course');
    }
}
