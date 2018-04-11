<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pertenece extends Model
{
    //le damos el nombre a la tabla
    protected $table = 'pertenece';
    protected $primaryKey = 'idPertenece';
    protected $fillable = ['idCarrera','idDoc'];
    //ya no guarda el created_at, updated_at 
    public $timestamps = false;

    public function carrera(){
    	return $this->hasOne(Carrera::class, 'idCarrera', 'idCarrera');
    }

    public function docente(){
    	return $this->hasOne(Docente::class, 'idDoc', 'idDoc');
    }
}
