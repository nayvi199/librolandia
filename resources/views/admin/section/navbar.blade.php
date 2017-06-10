<div class="sidebar-menu">
	<header class="logo1">
		<a href="#" class="sidebar-icon"> <span class="fa fa-bars"></span> </a>
	</header>
	<div style="border-top:1px ridge rgba(255, 255, 255, 0.15)"></div>
	<div class="menu">
		<ul id="menu" >
			<li><a href="{{ url('admin') }}"><i class="fa fa-tachometer"></i> <span>Principal</span></a></li>
			<li>
				<a href="{{ url('admin/sales') }}">
					<i class="fa fa-shopping-cart"></i>
					<span>Ventas</span>
				</a>
			</li>
			<li>
				<a href="{{ url('admin/inventories') }}">
					<i class="fa fa-list-ol"></i>
					<span>Inventario</span>
				</a>
			</li>
			<!--<li>
				<a href="{{ url('admin/images') }}">
					<i class="fa fa-file"></i>
					<span>Banco de Imagenes</span>
				</a>
			</li>-->
			<li>
				<a href="{{ url('/admin/genders') }}">
					<i class="fa fa-sitemap"></i>
					<span>Géneros y Categorias</span>
				</a>
			</li>
			<li>
				<a href="{{ url('admin/products') }}">
					<i class="fa fa-suitcase"></i>
					<span>Articulos</span>
				</a>
			</li>
			<li>
				<a href="{{ url('admin/users') }}">
					<i class="fa fa-users"></i>
					<span>Usuarios</span>
				</a>
			</li>
			<li>
				<a href="{{ url('admin/comments') }}">
					<i class="fa fa-list"></i>
					<span>Comentarios</span>
				</a>
			</li>
			<li id="menu-academico" ><a href="#"><i class="fa fa-table"></i> <span>Otros</span> <span class="fa fa-angle-right" style="float: right"></span></a>
				<ul id="menu-academico-sub" >
					<li>
						<a href="{{ url('admin/sizes') }}">
							<i class="fa fa-sliders"></i>
							<span>Estado del libro</span>
						</a>
					</li>
					<li>
						<a href="{{ url('admin/colors') }}">
							<i class="fa fa-hashtag"></i>
							<span>Clasificacion de Edad</span>
						</a>
					</li>
					<li>
						<a href="{{ url('admin/brands') }}">
							<i class="fa fa-tags"></i>
							<span>Editoriales</span>
						</a>
					</li>
				</ul>
			</li>

		</ul>
	</div>
</div>

