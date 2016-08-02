<?php
namespace App;
use DB;
use Illuminate\Database\Eloquent\Model;
class SyllabusUser extends Model{
	/**
	 * The database table used by the model.
	 *
	 * @var string
	 */
	protected $table = 'syllabususer';

	/**
	 * The attributes that are mass assignable.
	 *
	 * @var array
	 */
	protected $fillable = ['id','first_name', 'last_name', 'user_name', 'password', 'email_address', 'contact_no', 'user_type'];

	public function getAll(array $query){
		return $this->query_db($query);
	}

	public function getUserName(){
		$fillable = ['id','first_name', 'last_name', 'user_name', 'password', 'email_address', 'contact_no', 'user_type'];
		$fillable= json_encode($fillable);
		$fillable = str_replace("'", '', $fillable);
		$fillable = str_replace("[", '(', $fillable);
		$fillable = str_replace("]", ')', $fillable);
		return $fillable;
	}

	public function getEmailAddress(){
		return $this->insert_user();
	}

	public function isMatchPassword($newPassword, $dbPassword){

	}

	private function query_db($query){
		$users = DB::table($this->table)->get();
		return $users;
	}

	private function insert_user(){
		DB::insert('insert into syllabususer (id, first_name, last_name, user_name, password, email_address, contact_no, user_type) values (?, ?, ?, ?, ?, ?, ?, ?)', [2, 'Sagar', 'sapkota', 'sagar_sapkota', 'passowrd', 'sagar@sapkota.com', '9813397404', 'admin' ]);
	}

}
