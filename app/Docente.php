<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Docente extends Model
{
    //le damos el nombre a la tabla
    protected $table = 'docente';
    protected $primaryKey = 'idDoc';
    protected $fillable = ['ciDoc','nombreDoc', 'apePaternoDoc', 'apeMaternoDoc', 'emailDoc', 'telefonoDoc', 'tituloDoc', 'cargaHoraria'];
    //ya no guarda el created_at, updated_at 
    public $timestamps = false;

    public function tiene(){
        return $this->hasMany('App\Tiene', 'idDoc', 'idDoc');
    }
}
