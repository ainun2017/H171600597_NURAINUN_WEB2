<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\pengumuman;
use App\Kategoripengumuman;

class PengumumanController extends Controller
{
    function index(){
        $pengumuman=pengumuman::all();

        return view ('pengumuman.index',compact('pengumuman'));
    }
    public function show($id)
    {
    
    	$pengumuman=pengumuman::find($id);

    	return view(  'pengumuman.show',compact( 'pengumuman'));
    }

    public function create()
    {
    	$KategoriPengumuman=KategoriPengumuman::pluck('nama','id');
    	

    	return view( 'pengumuman.create',compact('KategoriPengumuman'));
    }
    public function store(Request $request)
    {
    	$input= $request->all();
    	
    	pengumuman::create($input);

    	return redirect(route('pengumuman.index'));
    }
     public function edit($id){
     	$Pengumuman = \App\Pengumuman::find($id);
		$KategoriPengumuman = \App\KategoriPengumuman::find($id);

		return view('pengumuman.edit', compact('Pengumuman', 'KategoriPengumuman'));


	}
	public function update($id, Request $request){
		$Pengumuman = \App\Pengumuman::find($id);
		$input=$request->all();

		$Pengumuman->update($input);

		return redirect(route('pengumuman.index'));
	}

	public function destroy($id){
		$Pengumuman = \App\Pengumuman::find($id);

		$Pengumuman->delete();

		return redirect(route('pengumuman.index'));
	}

}