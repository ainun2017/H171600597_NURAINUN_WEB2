<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Galeri extends Model
{
	protected $table="galeri";
	protected $fillable=['nama','katerangan','path','users_id','kategori_galeri_id','created_at'];

	protected $casts=[];
}