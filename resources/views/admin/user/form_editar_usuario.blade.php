@extends('layouts.app')

@section('content')

  <div class="container center">
    <div class="col s12 m6 offset-m3">
      <h1>Agregar nuevo usuario</h1>

      <form role="form" method="POST" action="{{ url('/crear_usuario') }}">
        {{ csrf_field() }}

        <div class="input-field col s12">
          <input id="username" type="text" name="username" value="{{ old('username') }}" required autofocus>
          <label for="user">Usuario</label>
          @if ($errors->has('username'))
            <div class="red white-text">
              {{ $errors->first('username') }}
            </div>
          @endif
        </div>

        <div class="input-field col s12">
          <input id="full_name" type="text" name="full_name" value="" required>
          <label for="full_name">Nombre completo</label>
          @if ($errors->has('full_name'))
            <div class="red white-text">
              {{ $errors->first('full_name') }}
            </div>
          @endif
        </div>

        <div class="input-field col s12">
          <input id="email" type="text" name="email" value="" required>
          <label for="email">Correo</label>
          @if ($errors->has('email'))
            <div class="red white-text">
              {{ $errors->first('email') }}
            </div>
          @endif
        </div>

        <div class="input-field col s12">
          <input id="password" type="password" name="password" required>
          <label for="password">Clave</label>
          @if ($errors->has('password'))
            <div class="red white-text">
              {{ $errors->first('password') }}
            </div>
          @endif
        </div>
        <div class="input-field col s12">
          <input id="country" type="text" name="country" required>
          <label for="country">Pais</label>
        </div>

         <div class="input-field col s12">
          <input id="address" type="text" name="address" required>
          <label for="address">Direccion (Num.calle y Num.casa)</label>
        </div>

          <div class="input-field col s12">
          <input id="city" type="text" name="city" required>
          <label for="city">Ciudad</label>
          </div>

           <div class="input-field col s12">
          <input id="postal_code" type="text" name="postal_code" required>
          <label for="postal_code">Codido Postal</label>
        </div>
         <div class="input-field col s12">
          <input id="phone" type="text" name="phone" required>
          <label for="phone">Telefono</label>
        </div>


        @if (count($errors) > 0)
          <div class="row">
            <div class="col s12 red center white-text">
              @foreach ($errors->all() as $error)
                {{ $error }} <br>
              @endforeach
            </div>
          </div>
        @endif

        
        </form>
        <input type="submit" value="Aceptar" class="btn blue">
        <a href="{{url('volver')}}" class="btn red">Cancelar</a>
      </div>
    </div>
@endsection
