<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Berita;
use App\KategoriBerita;

class BeritaController extends Controller
{
    public function index()
    {
    	$Berita = \App\Berita::all();

    	return view('berita.index',compact('Berita'));    
    }
    
    public function show($id)
    {
    	$Berita = \App\Berita::find($id);

    	return view('berita.show',compact('Berita'));    
    }

    public function create(){

        $KategoriBerita= \App\KategoriBerita::pluck ('nama','id');

        return view('berita.create',compact('KategoriBerita'));
    }
     public function store(Request $request){
        $input=$request->all();
       Berita::create($input);
       return redirect(route('berita.index'));
       
    }

    public function edit($id){
	$Berita=Berita::find($id);
	return view('berita.edit', compact('Berita'));

	

	if(empty($Berita)){
	return redirect(route('berita.index'));
	}

		return view('berita.edit', compact('Berita'));
	}
	public function update($id, Request $request){
		$Berita=Berita::find($id);
		$input= $request->all();

	if(empty($Berita)){
	return redirect(route('berita.index'));
	}

	$Berita->update($input);

	return redirect(route ('berita.index'));

	}

	public function destroy($id){
	$Berita=Berita::find($id);

	
	if(empty($Berita)){
	return redirect(route('berita.index'));
	}
	$Berita->delete();
	return redirect(route('berita.index'));
}   
}
