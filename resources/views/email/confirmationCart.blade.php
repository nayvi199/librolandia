@extends('layouts.app')
@section('content')
<div class="container">
  <table>
                <th>.
                    <tr>.</tr>
                </th>
            </table>
        <div class="row">
        <div>
        <img src="{{ url('confirmacion.jpg') }}" class="img-rounded" alt="Cinque Terre" width="304" height="236">
        <h2>Se realizara la siguiente Compra <b>$</b><h3>'Por domicilio'</h3>:</h2>. 
        <h2 style="color:#509407">Metodo de Pago:CONTADO</h2>

        
        	<h5>Estimado <b>{{$user['full_name']}} </b></h5>
        	<p>
        		Se le notifica que esta apunto de realizar la siguiente compra y resibira su libro en su domicilio:
            </p>
            <table class="centered">
                <thead>
                    <tr>
                        <th>Cantidad</th>
                        <th>Nombre</th>
                        <th>Precio</th>
                    </tr>
                </thead>
                @foreach($cart as $item)
                    <tr>
                        <td>{{$item->amount}}</td>
                        <td>{{$item->product->name}}</td>
                        <td>${{$item->product->price}}</td>
                    </tr>
                @endforeach
            </table>
            Porfavor siga el siguiente enlace para confirmar su compra en Librolandia.
            
            <a href=" {{ url('user/buy_the_cart/' . $user['confirmation_code']) }}">
                (Confirmar)
            </a>
			<p>
				Gracias por su preferencia!!
			</p>
            <table>
                <th>.
                    <tr>.</tr>
                </th>
            </table>
        </div>
    </div>
 </div>

  
@endsection