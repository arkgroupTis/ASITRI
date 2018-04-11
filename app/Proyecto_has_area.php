<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Proyecto_has_area extends Model
{
    //le damos el nombre a la tabla
    protected $table = 'proyecto_has_area';
    // protected $primaryKey = 'idArea';
    protected $fillable = ['idProyecto','idArea'];
    //ya no guarda el created_at, updated_at 
    public $timestamps = false;

    public function proyecto(){
    	return $this->hasOne(Proyecto::class, 'idProyecto', 'idProyecto');
    }

    public function area(){
    	return $this->hasOne(Area::class, 'idArea', 'idArea');
    }
}
