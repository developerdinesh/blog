<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class test_mod extends Model {

	protected $table = "test_mod";

    protected $fillable = ['id', 'name', 'email', 'contact'];

}
