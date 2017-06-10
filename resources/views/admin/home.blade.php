@extends('admin.app')

@section('header')
Menu Principal
@stop
@section('content')
<!--PAGINA DEL ADMINISTRADOR-->
	<div class="row home">
		<div class="col-md-4">
			<div class="thumbnail">
				<a href="{{ url('admin/sales') }}">
					<!--<div class="icon">
						<i class="fa fa-shopping-cart"></i>
					</div>-->
					<div class="icon">
						<i class="fa fa-shopping-cart"></i>
					</div>
					<div class="caption"  style="background-color: #A960A8">
						<h3>Ventas</h3>
					</div>
				</a>
			</div>
		</div>
		<div class="col-md-4">
			<div class="thumbnail">
				<a href="{{ url('admin/comments') }}">
					<div class="icon">
						<i class="glyphicon-envelope"></i>

					</div>
					<div class="caption" style="background-color: #A960A8">
						<h3>Comentarios</h3>
					</div>
				</a>
			</div>
		</div>
		<div class="col-md-4">
			<div class="thumbnail">
				<a href="{{ url('admin/inventories') }}">
					<div class="icon">
						<i class="fa fa-balance-scale"></i>
					</div>
					<div class="caption" style="background-color: #A960A8">
						<h3>Inventario</h3>
					</div>
				</a>
			</div>
		</div>
	</div>
	<div class="row home">
		<div class="col-md-4">
			<div class="thumbnail">
				<a href="{{ url('/admin/genders') }}">
					<div class="icon">
						<i class="fa fa-sitemap"></i>
					</div>
					<div class="caption" style="background-color: #E71D82">
						<h3>Géneros y Categorias</h3>
					</div>
				</a>
			</div>
		</div>
		<div class="col-md-4">
			<div class="thumbnail">
				<a href="{{ url('admin/products') }}">
					<div class="icon">
						<i class="fa fa-book"></i>
					</div>
					<div class="caption" style="background-color: #E71D82">
						<h3>Libros</h3>
					</div>
				</a>
			</div>
		</div>
		<div class="col-md-4">
			<div class="thumbnail">
				<a href="{{ url('admin/users') }}">
					<div class="icon">
						<i class="fa fa-user-circle-o"></i>
					</div>
					<div class="caption" style="background-color: #E71D82">
						<h3>Usuarios</h3>
					</div>
				</a>
			</div>
		</div>
		
	</div>
	<div class="row home">
		<div class="col-md-4">
			<div class="thumbnail">
				<a href="{{ url('admin/colors') }}">
					<div class="icon">
						<i class="fa fa-bookmark-o"></i>
					</div>
					<div class="caption" style="background-color: #6AC786">
						<h3>Clasificacion por Edad</h3>
					</div>
				</a>
			</div>
		</div>
		<div class="col-md-4">
			<div class="thumbnail">
				<a href="{{ url('admin/brands') }}">
					<div class="icon">
						<i class="fa fa-tags"></i>
					</div>
					<div class="caption" style="background-color: #6AC786">
						<h3>Editoriales</h3>
					</div>
				</a>
			</div>
		</div>
		<!--FALTA IMPLEMENTAR MEJOR
		<div class="col-md-4">
			<div class="thumbnail">
				<a href="{{ url('admin/banners') }}">
					<div class="icon">
						<i class="fa fa-briefcase"></i>
					</div>
					<div class="caption">
						<h3>Banners</h3>
					</div>
				</a>
			</div>
		</div>-->

		<!--PARA LA SECCION QUE SALE SIN IGUAL-->
		<div class="col-md-4">
			<div class="thumbnail">
				<a href="{{ url('admin/sizes') }}">
					<div class="icon">
						<i class="fa fa-sliders"></i>
					</div>
					<div class="caption" style="background-color: #6AC786">
						<h3>Estados del libro</h3>
					</div>
				</a>
			</div>
		</div>
	</div>
@stop

