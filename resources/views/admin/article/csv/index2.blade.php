<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<meta charset="UTF-8">
	<title>Listado de Libros-LIBROLANDIA</title>
	<style>
		.fondo{
			background-color: magenta;
		}
	</style>
</head>
<body>
	<div class="container">
	<h1>LISTADO</h1>
	<hr>
	<table class="table">
		<tr class="info">
			<td>ID</td>
			<td>Nombre</td>
			<td>Descripcion</td>
			<td>Estado</td>
			<td>Clasificacion</td>
			
		</tr>
		@foreach($products as $p)
			<tr class="danger">
				<td>{{p->id}}</td>
				<td>{{p->name}}</td>
				<td>{{p->description}}</td>
				<td>{{p->color_id}}</td>
				<td>{p->subcategory_id}</td>			
			</tr>
		@endforeach
	</table>
</body>
</div>
</html>

