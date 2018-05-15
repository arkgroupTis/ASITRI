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

    public function proyecto_estudiante(){
        return $this->hasMany('App\Proyecto_estudiante', 'idProyecto', 'idProyecto');
    }

    public function proyecto_has_area(){
        return $this->hasMany('App\Proyecto_has_area', 'idProyecto', 'idProyecto');
    }
}
