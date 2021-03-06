<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| This file is where you may define all of the routes that are handled
| by your application. Just tell Laravel the URIs it should respond
| to using a Closure or controller method. Build something great!
|
*/


# Pagina principal.
Route::get('/','HomeController@index')->name('home');

/*Auth*/
	Auth::routes();
	# Activar cuenta.
	Route::get(
		'register/verify/{id}',
		'Auth\RegisterController@confirm'
	);
	# Registrar usuario
	Route::post('/store','Auth\RegisterController@store');

/* Consultar libros */
	# Ver libros de un genero en especifico.
	Route::get(
		'/gender/{id}',
		'GenderController@showPublic'
	)->name('view_gender');
	# ver libros de una categoria.
	Route::get(
		'/category/{id}',
		'CategoryController@showPublic'
	)->name('view_category');
	# Ver libros de una subcategoria.
	Route::get(
		'/subcategory/{id}',
		'SubcategoryController@showPublic'
	)->name('view_subcategory');
	# Ver un producto en especifico.
	Route::get(
		'/view/{product_id}',
		'ProductController@showPublic'
	)->name('view_product');

	Route::get(
		'/products',
		'ProductController@showAll'
	);

Route::get('profile/{username}','UserController@profile');

Route::get('/add_cart/{product_id}','ProductController@addToCart')->name('add_to_cart');

Route::post('/store','Auth\RegisterController@store');
Auth::routes();

//para que el administrador cree un usuario
Route::post('crear_usuario', 'UserController@crear_usuario');
Route::get('/form_nuevo_usuario', 'UserController@form_nuevo_usuario');

//para regresar al administrador donde mismo
Route::get('volver', 'UserController@volver');
