<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Repositories\Colors;
class ColorController extends Controller
{
	protected $colors;
	function __construct(Colors $colors)
	{
		$this->colors = $colors;
	}
	
	public function index()
	{
		$colors = $this->colors->getAll();
		return view('admin.color.index',compact('colors'));
	}

	
	public function create()
	{
		return view('admin.color.create');
	}

	
	public function store(Request $request)
	{
		 $this->colors->save($request->all());
		 return redirect('admin/colors')->with('message','Categoria registrada con exito!');
	}

	
	public function show($id)
	{
		//Falta activar esta funcion por que ya se muestra la info
	}

	
	public function edit($id)
	{
		//Falta activar esta funcion
	}

	
	public function update(Request $request, $id)
	{
		//Falta implementar esta funcion
	}

	
	public function destroy($id)
	{
		$this->colors->remove($id);
		return redirect('admin/colors')->with('message','Categoria Eliminada!');
	}
}
