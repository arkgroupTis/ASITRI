@extends('layouts.app')
@section('content')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<h1 class="text-center">Areas \ Sub Areas</h1>
	<h1 class="text-center">   </h1>
	<h3 class="text-center">Areas</h3>
	<div class="form-row">
		
    	<div class="col-md-6" >
			<label class="sr-only" ></label>
        <div class="md-form input-group mb-3">
    		<input class="form-control pl-0 rounded-0" id="Search1" type="text" placeholder="Buscar Areas...">	
				</div>
    	</div>
			<div class="col-md-3" >
    			
    	</div>
			<div class="col-md-3" algin="center" >
			  <button class="btn btn-cyan btn-rounded">
          <a href="/areaNueva"><font color="white" size="3">Nueva Area/Sub Area</font></a>
				</button>
			</div>   	
    </div>

<!-- tabla area -->
<div class="tablaScroll5">
   <table class="table table-striped table-sm tablaScroll5">
       <thead>
           <tr>
               <th style="width: 10%"  class="text-center">Codigo</th>
               <th style="width: 20%" >Area</th>
               <th style="width: 60%" >Descripcion Area</th>
							 <th style="width: 10%" class="text-center">Detalles</th>
           </tr>
       </thead>
       <tbody id="table1">
 	   @foreach($areas as $area)
   	     <tr data-id='{{$area -> idArea}}'>
   	       <td style="width: 10%" class="text-center">{{$area -> idArea}}</td>
     	     <td style="width: 20%">{{$area -> nombreArea}}</td>
     	     <td style="width: 60%" >{{$area -> descripcionArea}}</td>
						<td style="width: 10%" class="text-center">
						<a class="btn-floating btn-sm btn-mdb-color btn-modal-show" data-toggle="tooltip" data-placement="top" title="ver"><i class="fa fa-eye mt-2 ml-1 fa-lg"></i></a>
						</td>

     	   </tr>
 	   @endforeach
 	 </tbody>
   </table>
</div>

<div class="group form-row" style=margin-top:60px;></div>
<h3 class="text-center">Sub Areas</h3>
<div class="form-row">
<div class="col-md-6">
				<label class="sr-only" ></label>
        <div class="md-form input-group mb-3">
    		<input class="form-control pl-0 rounded-0" id="Search2" type="text" placeholder="Buscar Sub Areas...">	
    	</div>
			</div>
			</div>

<!-- tabla subarea -->
<div class="tablaScroll5">
   <table class="table table-striped table-sm tablaScroll5">
       <thead>
           <tr>
               <th style="width: 10%"  class="text-center">Codigo</th>
               <th style="width: 20%" >Sub Area</th>
               <th style="width: 60%" >Descripcion Sub Area</th>
							 <th style="width: 10%" class="text-center">Detalles</th>
           </tr>
       </thead>
       <tbody id="table2">
 	   @foreach($subareas as $subarea)
   	     <tr  data-id='{{$subarea -> idArea}}'>
   	       <td style="width: 10%" class="text-center">{{$subarea -> idArea}}</td>
     	     <td style="width: 20%">{{$subarea -> nombreArea}}</td>
     	     <td style="width: 60%">{{$subarea -> descripcionArea}}</td>
					
						<td style="width: 10%" class="text-center">
						<a class="btn-floating btn-sm btn-mdb-color btn-modal-show" data-toggle="tooltip" data-placement="top" title="ver"><i class="fa fa-eye mt-2 ml-1 fa-lg"></i></a>
						</td>

     	   </tr>
 	   @endforeach
 	 </tbody>
   </table>
</div>
<!-- //MODAL SHOW AREA -->
<div class="modal fade" id="modal-show" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
   <div class="modal-dialog modal-notify modal-info modal-lg" role="document">
       <!--Content-->
       <div class="modal-content">
           <!--Header-->
           <div class="modal-header">
               <p class="heading lead">DETALLES</p>
              
               <button type="button" class="close" data-dismiss="modal" aria-label="Close">
               <span aria-hidden="true" class="white-text">&times;</span>
               </button>
           </div>
          
           <!--Body-->
           <div class="modal-body">
               <!-- Grid row -->
               <div class="form-row">
                   <!-- Grid column -->
                   <div class="col-md-12">
                       <table class="table table-bordered">
                           <tbody>
                               <tr>
                                   <th scope="row">ID</th>
                                   <td id="td-id"></td>
                               </tr>
                               <tr>
                                   <th scope="row">Nombre</th>
                                   <td id="td-nombre"></td>
                               </tr>
                               <tr>
                                   <th scope="row">Descripcion</th>
                                   <td id="td-descripcion"></td>
                               </tr>
															 <tr>
                                   <th scope="row">Docentes</th>
                                   <td id="td-docentes"></td>
                               </tr>
	
                           </tbody>
                       </table>
                   </div>
                   <!-- Grid column -->
               </div>
               <!-- Grid row -->             
           </div>
           <!--Footer-->
           <div class="modal-footer">
               <button class="btn btn-danger" data-dismiss="modal">Cerrar</button>
           </div>
       </div>
       <!--/.Content-->
   </div>
</div>


  <script>
		$(document).on('click', '.btn-modal-show', function() {
       $.get('/areas/'+$($(this).parents("tr")).data('id'), function(data){			 
           $('#td-id').text(data.area.idArea);
           $('#td-nombre').text(data.area.nombreArea);
           $('#td-descripcion').text(data.area.descripcionArea);
					 var aux = "";
					 data.docente.forEach( function(valor,indice,array)
					{
						aux = aux + valor.apePaternoDoc + " " + valor.apeMaternoDoc + " " + valor.nombreDoc + '<br>';
					});
					$('#td-docentes').empty(); 
					$('#td-docentes').append(aux);
					
					

       });
       $('#modal-show').modal('show');
	 });

	 

    $(document).ready(function(){
 	 $("#Search1").on("keyup", function() {
 	   var value = $(this).val().toLowerCase();
 	   $("#table1 tr").filter(function() {
 	     $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
 	   });
 	 });
    });

    $(document).ready(function(){
 	 $("#Search2").on("keyup", function() {
 	   var value = $(this).val().toLowerCase();
 	   $("#table2 tr").filter(function() {
 	     $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
 	   });
 	 });
    });

  </script>
@endsection
