<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Carrera extends Model
{
    //le damos el nombre a la tabla
    protected $table = 'carrera';
    protected $primaryKey = 'idCarrera';
    protected $fillable = ['nombreCarrera'];
    //ya no guarda el created_at, updated_at 
    public $timestamps = false;
}
