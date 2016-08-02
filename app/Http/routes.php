<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/', 'HomeController@index');

//Route::get('/', 'WelcomeController@index');

Route::get('home', 'HomeController@index');

Route::controllers([
	'auth' => 'Auth\AuthController',
	'password' => 'Auth\PasswordController',
]);


Route::get('user', function(){
/*

	$user = App\test_mod::find(1);

	echo '<pre>';
		print_r($user);
	echo '</pre>';*/

	$users = DB::table('user')->get();
	var_dump($users);
});

Route::get('login', 'SyllabusController@index');