@extends('layouts.app')
@section('content')
<style>
	.card .card-image{
	max-height: 250px;
	overflow: hidden;
}

</style>
<div id="main-carousel" class="owl-carousel owl-theme">
	@foreach ($banners as $banner)
		<div class="item" >
			<img src="{{$banner->image}}" alt="">
			<p class="center" >{{$banner->description}}</p>
		</div>
	@endforeach
</div>

<div class="container">
	<div class="row">
		<h1 class="center col s12">No pierdas mas tiempo,<br>encuentra con nosotros lo que necesitas</h1>

		<div class="col s12 m6 l4">
			<div class="card">
				<div class="card-image">
					<img src="{{asset('images/50desc.gif')}}">
					<span class="card-title">Descuentos de hasta el 50%</span>
				</div>
				<div class="card-content">
					<p>Te sorprenderá todo lo que <br>puedes encontrar con grandes <br>precios.</p>
				</div>
			</div>
		</div>
		<div class="col s12 m6 l4">
			<div class="card">
				<div class="card-image">
					<img src="{{asset('images/libroantiguo.jpg')}}">
					<span class="card-title">Encuentra el libro de tus sueños</span>
				</div>
				<div class="card-content">
					<p>Solo aquí tenemos para ti <br> los mejores libros <br>Y ediciones mas nuevas.</p>
				</div>
			</div>
		</div>
		<div class="col s12 m6 l4">
			<div class="card">
				<div class="card-image">
					<img src="{{asset('images/noebook.png')}}">
					<span class="card-title">Los libros de temporada</span>
				</div>
				<div class="card-content">
					<p>Olvida los libros electronicos <br>se tradicional y permanece con <br>estilo.</p>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<h2 class="center col s12">Libros populares</h2>
		<div id="popular-carousel" class="owl-carousel owl-theme">
			@foreach($products as $product)
				@include('components.product',['product'=>$product,'format'=>'owl-carousel'])
			@endforeach
		</div>
	</div>

</div>
@stop
