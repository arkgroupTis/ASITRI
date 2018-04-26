@extends('layouts.app')


@section('content')
<h3 class="text-md-right">INICIO</h3>
		<h1 class="text-center">TRIBUNALES</h1>
		<p></p>
	    <input type=hidden name=ie value=UTF-8 /> 
	    <input type=hidden name=oe value=UTF-8 /> 
	    
	    
	    <INPUT type=submit  id="x" name=btnG VALUE="Buscar :" />                  
	    <INPUT TYPE=text id="s" name="q" value="" size="100" /> 
	    <p></p>
	    <table class="table table-bordered">
		<thead>
		<tr>
		  <th scope="col">Nombre Tribunal</th>
		  <th scope="col">Proyectos</th>
		</tr>
		</thead>
		<tbody>
		<tr>
		  <td>Mark</td>
		  <td>Otto</td>
		</tr>
		<tr>
		  <td>Jacob</td>
		  <td>Thornton</td>
		</tr>
		<tr>
			<td>Jacob</td>
		  	<td>Thornton</td>
		</tr>
		</tbody>
</table>
@endsection