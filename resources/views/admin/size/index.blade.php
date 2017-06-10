@extends('admin.app')
@section('breadcrumb')
	@php
		$breadcrumb=[
			['url'=>url('admin'),'name'=>'Inicio'],
			['name'=>'Estado ']
		];
	@endphp
@stop
@section('header')
 Estado de Libros
@stop
@section('content')
	@foreach ($sizes->chunk(6) as $row)
		<div class="row">
			@each ('admin.size.item', $row, 'size')
		</div>
	@endforeach
	<a href="{{ url('/admin/sizes/create') }}" class="btn btn-default btn-lg" style="background-color: #73D60A">Nuevo(+)</a>
@stop

