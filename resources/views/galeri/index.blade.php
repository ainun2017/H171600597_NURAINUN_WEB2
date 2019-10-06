@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
		<div class="card-header">Galeri</div>
                <div class="card-body">
				
                <a href ="{!! route('galeri.create') !!}" button class="btn btn-primary" type="button"> Tambah </button></td></a>
                <table class="table table-bordered">
                    <thead class="bg-success">
                            <tr>
                                <th scope="col">Id</th>
                                <th scope="col">Nama</th>
                                <th scope="col">Keterangan</th>
                                <th scope="col">Path</th>
                                <th scope="col">Kategori Galeri Id</th>
                                <th scope="col">Aksi</th>
                            </tr>
                    </thead>
                    <tbody>

                        @foreach ($galeri as $item)
                            <tr>
                            <td>{!! $item->id !!}</td>
                            <td>{!! $item->nama !!}</td>
                            <td>{!! $item->keterangan !!}</td>
                            <td>{!! $item->path !!}</td>
                            <td>{!! $item->kategori_galeri_id !!}</td>
                            <td>
                            <a href ="{!! route('galeri.show',[$item->id]) !!}" button class="btn btn-sm btn-danger" type="button"> Hapus </button></a> 
                            <a href="{!! route('galeri.show',[$item->id]) !!}" button class="btn btn-sm btn-primary" type="button"> Lihat </td></a>

                                </td>
                            </tr>

                        @endforeach
                    </tbody>
                    </table>
                </div>
                
            </div>
        
        </div>
    </div>
</div>
@endsection