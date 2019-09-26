<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class KategoriArtikelController extends Controller
{
    
    function index(){
    	$kategoriArtikel=kategoriArtikel::all();
    	return view('kategori_artikel.index',compact(kategoriArtikel)):

    }
}
