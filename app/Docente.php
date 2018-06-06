<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Docente extends Model
{
    //le damos el nombre a la tabla
    protected $table = 'docente';
    protected $primaryKey = 'idDoc';
    protected $fillable = ['ciDoc','nombreDoc', 'apePaternoDoc', 'apeMaternoDoc', 'emailDoc', 'telefonoDoc', 'tituloDoc', 'cargaHoraria', 'tipo'];
    //ya no guarda el created_at, updated_at 
    public $timestamps = false;
    
    public function pertenece(){
        return $this->hasMany('App\Pertenece', 'idDoc', 'idDoc');
    }
    
    public function asignacion(){
        return $this->hasMany('App\Asignacion', 'idDoc', 'idDoc');
    }
    
    public function tiene(){
        return $this->hasMany('App\Tiene', 'idDoc', 'idDoc');
    }
}
