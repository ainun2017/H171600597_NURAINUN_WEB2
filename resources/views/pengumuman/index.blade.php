@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
			<div class="card-header">Pengumuman</div>
                <div class="card-body">
				
                <a href ="{!! route('pengumuman.create') !!}" button class="btn btn-primary" type="button"> Tambah </button></td></a>
                <table class="table table-bordered">
                    <thead class="bg-success">
                        <tr>
                        <th scope="col">Id</th>
                        <th scope="col">Judul</th>
                        <th scope="col">Isi</th>
                        <th scope="col">User_id</th>
                        <th scope="col">Create</th>
                        <th scope="col">Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach( $pengumuman as $item)
                        <tr>
                        <td>{!! $item->id !!}</td>
                        <td>{!! $item->judul !!}</td>
                        <td>{!! $item->isi !!}</td>
                        <td>{!! $item->users_id !!}</td>
                        <td>{!! $item->created_at->format('d/m/Y H:i:s') !!}</td>
                        <td>
                     
                            <a href="{!! route('pengumuman.show',[$item-> id]) !!}" button class="btn btn-success">Lihat</a>
                            <a href="{!! route('pengumuman.edit',[$item->id]) !!}" class="btn btn-sm btn-warning"> Ubah </a>
						{!! Form::open(['route' => ['pengumuman.destroy', $item->id],'method'=>'delete']) !!}
						{!! Form::submit('Hapus',['class'=>"btn btn-sm btn-danger"]); !!}
						{!! Form::close() !!}
                        </td>
                        </tr>
	
		@endforeach
		
		</table>
		</div>

		@endsection