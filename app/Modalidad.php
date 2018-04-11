<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Modalidad extends Model
{
    //le damos el nombre a la tabla
    protected $table = 'modalidad';
    protected $primaryKey = 'idModalidad';
    protected $fillable = ['nombreMod'];
    //ya no guarda el created_at, updated_at 
    public $timestamps = false;
}
