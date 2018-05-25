<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Asignacion extends Model
{
    //le damos el nombre a la tabla
    protected $table = 'asignacion';
    protected $primaryKey = 'idAsig';
    protected $fillable = ['rol','idProyecto','idDoc', 'estado'];
    //ya no guarda el created_at, updated_at 
    public $timestamps = false;

    public function proyecto(){
        return $this->hasOne(Proyecto::class, 'idProyecto', 'idProyecto');
    }

    public function docente(){
    	return $this->hasOne(Docente::class, 'idDoc', 'idDoc');
    }
}
