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
  <!--<div class="tablaScroll3">
    <table class="table table-striped tablaScroll3">
 	 <thead>
 	   <tr>
 	     <th style="width: 15%"><font size="3">Codigo Area</font></th>
 	     <th style="width: 55%"><font size="3">Descripcion</font></th>
 	     <th style="width: 30%"><font size="3">Area</font></th>
 	   </tr>
 	 </thead>
 	 <tbody id="table1">
 	   @foreach($areas as $area)
   	     <tr>
   	       <td style="width: 15%">{{$area -> idArea}}</td>
     	     <td style="width: 55%">{{$area -> descripcionArea}}</td>
     	     <td style="width: 30%">{{$area -> nombreArea}}</td>

     	   </tr>
 	   @endforeach
 	 </tbody>
    </table>
  </div>-->


<div class="tablaScroll5">
   <table class="table table-striped table-sm tablaScroll5">
       <thead>
           <tr>
               <th style="width: 15%" >Codigo Area</th>
               <th style="width: 25%" >Area</th>
               <th style="width: 50%" >Descripcion Area</th>
           </tr>
       </thead>
       <tbody id="table1">
 	   @foreach($areas as $area)
   	     <tr>
   	       <td style="width: 15%" class="text-center">{{$area -> idArea}}</td>
     	     <td style="width: 25%">{{$area -> nombreArea}}</td>
     	     <td style="width: 60%">{{$area -> descripcionArea}}</td>

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
<div class="tablaScroll5">
   <table class="table table-striped table-sm tablaScroll5">
       <thead>
           <tr>
               <th style="width: 15%" >Codigo Sub Area</th>
               <th style="width: 25%" >Sub Area</th>
               <th style="width: 60%" >Descripcion Sub Area</th>
           </tr>
       </thead>
       <tbody id="table2">
 	   @foreach($subareas as $subarea)
   	     <tr>
   	       <td style="width: 15%" class="text-center">{{$subarea -> idArea}}</td>
     	     <td style="width: 25%">{{$subarea -> nombreArea}}</td>
     	     <td style="width: 60%">{{$subarea -> descripcionArea}}</td>

     	   </tr>
 	   @endforeach
 	 </tbody>
   </table>
</div>

  <script>
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
