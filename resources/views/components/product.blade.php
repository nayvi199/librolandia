
<div
	class="center
		@if($format == 'owl-carousel')
			item
		@elseif($format == 'materialize')
			col s12 m6 l4
		@endif
	"
	style="position: relative;"
>
	<a href="{{ route('view_product',['product_id'=>$product->id]) }}" class="product-image">
		<img src="{{asset($product->image)}}" alt=" " class="col s12" />
	</a>
	<br>
	<br>
	<a href="{{ route('view_product',['product_id'=>$product->id]) }}">{{$product->name}}</a>
	{{$product->description}} <br>
	<b>Desde $ {{$product->price}} <small>MXN</small></b> <br>
	<br>
	<a href="{{route('view_product',['product_id'=>$product->id])}}" class="btn orange">Ver Detalles</a>
</div>
