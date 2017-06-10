@extends('layouts.app')
@section('content')
	<div class="container">
		<div class="row">
		

			<div class="col s12 m8 offset-m2  l6 offset-l3">
			<table>
				<tr>
					<th></th>
					<th></th>
				</tr>
			</table>
			<img src="{{ url('img/compras.png') }}" class="img-rounded" alt="Cinque Terre" width="304" height="236">
				<h3>Mis Compras ($):</h3>
				@foreach($myShoppings as $shopping)
					<p>
						<h2><b>Fecha:</b>
						<a href="{{url('user/ticket/'.$shopping->id)}}">{{$shopping->date}}</a></h2>

						<a href="{{url('user/ticket/'.$shopping->id)}}">
						<input style="background-color: #FF9900" value="Ver Compra" name="button" class="btn btn-primary btn-lg"/></a>
					</p>
				@endforeach
			</div>
			

		</div>
			<div class="container">
				  <h2></h2>
				  <p></p>            
				  <table class="table table-hover">
				    <thead>
				      <tr>
				        <th></th>
				        <th></th>
				       
				      </tr>
				    </thead>
				    <tbody>
				      <tr>
				        <td></td>
				        <td></td>
				    
				      </tr>
				      <tr>
				        <td></td>
				        <td></td>
				        
				      </tr>
				      <tr>
				        <td></td>
				        <td></td>
				        
				      </tr>
				    </tbody>
				  </table>
				</div>
	</div>
@endsection
