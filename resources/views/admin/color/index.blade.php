@extends('admin.app')
@section('breadcrumb')
	@php
		$breadcrumb=[
			['url'=>url('admin'),'name'=>'Inicio'],
			['name'=>'Clasificacion']
		];
	@endphp
@stop
@section('header')
 Clasificacion de Libros
@stop
@section('content')
	<style>
		div.example{
			width: 50%!important;
			height: 20px!important;
		}
	</style>

	<!--Para obtener los colores de la categoria de la BD-->
	@foreach ($colors->chunk(6) as $row)
		<div class="row">
			@each ('admin.color.item', $row, 'color')
			
		</div>
	@endforeach
	<div>
	<a href="{{ url('/admin/colors/create') }}" class="btn btn-success btn-lg">Nueva Clasificacion</a></div>
@stop

