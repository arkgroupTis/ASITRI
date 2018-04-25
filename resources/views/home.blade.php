@extends('layouts.app')

@php
$home = [
	"uno" => "uno", 
	"dos" => "dos",
	"#" => "tres",
]
@endphp

@section('content')
<button class="btn aqua-gradient btn-rounded">este es un boton</button>

@endsection
