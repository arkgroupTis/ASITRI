<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Renuncia extends Model
{
    //le damos el nombre a la tabla
    protected $table = 'renuncia';
    protected $primaryKey = 'idRenuncia';
    protected $fillable = ['fechaRenuncia','motivosRenuncia','idAsig', 'descripcion'];
    //ya no guarda el created_at, updated_at 
    public $timestamps = false;

    public function asignacion(){
    	return $this->hasOne(Asignacion::class, 'idAsig', 'idAsig');
    }
}
