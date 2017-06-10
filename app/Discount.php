<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Specification;

class Discount extends Model
{
     protected $fillable = [
		'id', 'specification_id', 'name', 'description','percentage'
	];
	public function specification()
	{
		return $this->belongsTo(Specification::class);
	}
}
