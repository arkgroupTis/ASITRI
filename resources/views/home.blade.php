@extends('layouts.app')

@php
$home = [
	"uno" => "uno", 
	"dos" => "dos",
	"#" => "tres",
]
@endphp

@section('content')
<body style="background-image: url('/img/FONDD.jpg'); background-repeat: no-repeat; background-size: cover; background-position: center;">
	<button class="btn aqua-gradient btn-rounded">este es un boton</button>
</body>
    
@endsection
