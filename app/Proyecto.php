<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Proyecto extends Model
{
    //le damos el nombre a la tabla
    protected $table = 'proyecto';
    protected $primaryKey = 'idProyecto';
    protected $fillable = ['titulo','objetivos','descripcion', 'fecha', 'fechaFin', 'periodo', 'sesionDeConsejo', 'idModalidad'];
    //ya no guarda el created_at, updated_at 
    public $timestamps = false;

    public function modalidad(){
    	return $this->hasOne(Modalidad::class, 'idModalidad', 'idModalidad');
    }
}
