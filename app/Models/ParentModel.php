<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ParentModel extends Model
{
    use HasFactory;
    protected $table = 'parent';
    protected $primaryKey = 'parent_id';
    protected $fillable = ['name','email',];
    
    public function students()
    {
        return $this->hasMany(Student::class, 'fk_parent_id', 'parent_id');
    }
}

