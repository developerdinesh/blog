<?php
namespace App\Http\Controllers;
use DB;
use App\SyllabusUser;
class SyllabusController extends Controller{

    function __construct(){

    }

    function index(){
        $obj = new SyllabusUser();
        $query = array();
        //print_r($obj->getAll($query));
        print_r($obj->getEmailAddress());
    }


}