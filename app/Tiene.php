<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Tiene extends Model
{
    //le damos el nombre a la tabla
    protected $table = 'tiene';
    protected $primaryKey = 'idTiene';
    protected $fillable = ['idArea','idDoc'];
    //ya no guarda el created_at, updated_at 
    public $timestamps = false;

    public function area(){
    	return $this->hasOne(Area::class, 'idArea', 'idArea');
    }

    public function docente(){
    	return $this->hasOne(Docente::class, 'idDoc', 'idDoc');
    }
}
