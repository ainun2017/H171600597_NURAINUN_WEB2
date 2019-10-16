<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class KategoriGaleri extends Model
{
    protected $table ='kategori_galeri'; 
    
    protected $fillable = [
        'nama','users_id','created_at'
    ];
    protected $casts=[

    ];
}
