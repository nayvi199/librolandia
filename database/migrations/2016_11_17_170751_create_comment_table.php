<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCommentTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
    	Schema::create('comments', function (Blueprint $table) {
    		$table->increments('id');
    		$table->integer('user_id')->unsigned();
    		$table->integer('product_id')->unsigned();
    		$table->string('message');
    		$table->integer('status')->default('0');
    		$table->timestamps();
    	});
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
    	Schema::drop('comments');
    }
}