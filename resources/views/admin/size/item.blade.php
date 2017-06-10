<div class="col-md-2">
	<div class="thumbnail image">
		<h3>Formato</h3>
		<div class="caption">
			<h4>
				 {{$size->name}}
			</h4>
			<div class="options">
				<form action="{{ url("admin/sizes/$size->id") }}" method="POST">
					{{ csrf_field() }}
					{{ method_field('DELETE') }}
					<button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></button>
				</form>
			</div>
		</div>
	</div>
</div>

