<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Area extends Model
{
    //le damos el nombre a la tabla
    protected $table = 'area';
    protected $primaryKey = 'idArea';
    protected $fillable = ['nombreArea','descripcionArea','clasificacion'];
    //ya no guarda el created_at, updated_at 
    public $timestamps = false;

    public function tiene(){
        return $this->hasMany('App\tiene', 'idTiene', 'idTiene');
    }
}
