<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Estudiante extends Model
{
    //le damos el nombre a la tabla
    protected $table = 'estudiante';
    protected $primaryKey = 'idEstudiante';
    protected $fillable = ['ciEst','nombreEst','apellidoEst', 'emailEst', 'telefono', 'idProyecto', 'idCarrera'];
    //ya no guarda el created_at, updated_at 
    public $timestamps = false;

    public function proyecto(){
    	return $this->hasOne(Proyecto::class, 'idProyecto', 'idProyecto');
    }

    public function carrera(){
    	return $this->hasOne(Carrera::class, 'idCarrera', 'idCarrera');
    }
}
