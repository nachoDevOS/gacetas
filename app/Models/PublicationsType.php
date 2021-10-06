<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PublicationsType extends Model
{
    use HasFactory;
    protected $fillable = [
        'title', 'icon', 'image', 'description'
    ];

    public function publications(){
        return $this->hasMany(Publication::class, 'publications_type_id');
    }
}
