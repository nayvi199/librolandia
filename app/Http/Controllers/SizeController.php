<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Repositories\Sizes;
class SizeController extends Controller
{
	protected $sizes;
	function __construct(Sizes $sizes)
	{
		$this->sizes = $sizes;
	}
	
	public function index()
	{
		$sizes = $this->sizes->getAll();
		return view('admin.size.index',compact('sizes'));
	}

	public function create()
	{
		return view('admin.size.create');
	}

	
	public function store(Request $request)
	{
		 $this->sizes->save($request->all());
		 return redirect('admin/sizes')->with('message','Estado de libro registrado con exito!');

	}

	//metodos mostrar, actualizar y editar el estado
	public function show($id)
	{
		//
	}

	
	public function edit($id)
	{
		//
	}


	public function update(Request $request, $id)
	{
		//
	}

	
	public function destroy($id)
	{
		 $this->sizes->remove($id);
		 return redirect('admin/sizes')->with('message','Estado del libro Eliminado!');
	}
}
