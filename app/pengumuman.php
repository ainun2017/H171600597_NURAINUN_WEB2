<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pengumuman extends Model
{
    protected $table ='pengumuman'; 
    
    protected $fillable = [
        'judul','isi','users_id','Kategori_Pengumuman_id','created_at'
    ];

    protected $dates = ['created_at', 'updated_at'];
}
