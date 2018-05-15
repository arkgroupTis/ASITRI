<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Proyecto_estudiante extends Model
{
    //le damos el nombre a la tabla
    protected $table = 'proyecto_estudiante';
    // protected $primaryKey = 'idArea';
    protected $fillable = ['idProyecto','idEstudiante', 'estado'];
    //ya no guarda el created_at, updated_at 
    public $timestamps = false;

    public function proyecto(){
    	return $this->hasOne(Proyecto::class, 'idProyecto', 'idProyecto');
    }

    public function estudiante(){
    	return $this->hasOne(Estudiante::class, 'idEstudiante', 'idEstudiante');
    }
}
