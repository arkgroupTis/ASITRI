@extends('layouts.app')

@section('content')
<body style="background-image: url('/img/fond.jpg'); background-repeat: no-repeat; background-size: cover; background-position: center;">

<div class="row">
   <div class="col-lg-3 col-md-3" >
   <h3 ><p class="white-text">ASITRI</p></h3>
   <td><p class="white-text text-justify">
   "ASITRI" es un sistema que se encarga de la Asignacion de Tribunales a proyectos de grado
   de la Universidad Mayor de San Simon
   </p></td>
   <h3 ><p class="white-text">INFORMACION</p></h3>
   <td><p class="white-text text-justify">
   Y aqui continuara mas informacion o algo asi
   </p></td>
   </div>
   <!-- Grid column -->
   <div class="col-lg-3 col-md-6 mb-1">
       <a href="/docentes">
       <img src="/img/docente.jpg" class="img-fluid z-depth-1" alt="Responsive image">
       </a>
       <h3 class="text-center"><a href="/docentes"><p class="white-text">Docentes</p></a></h3>
   </div>
   <!-- Grid column -->

       <!-- Grid column -->
       <div class="col-lg-3 col-md-6 mb-1">
   <a href="/estudiante">
       <img src="/img/estudiante.jpg" class="img-fluid z-depth-1" alt="Responsive image">
       </a>
       <h3 class="text-center"><a href="/estudiante"><p class="white-text">Estudiantes</p></a></h3>
   </div>
   <!-- Grid column -->

   <!-- Grid column -->
   <div class="col-lg-3 col-md-6 mb-1">
       <a href="/proyectos">
       <img src="/img/tesis.jpg" class="img-fluid z-depth-1" alt="Responsive image">
       </a>
       <h3 class="text-center"><a href="/proyectos"><p class="white-text">Proyectos</p></a></h3>
   </div>
   <!-- Grid column -->

  



</div>
<div class="row">
   <div class="col-lg-3 col-md-3 mb-3"></div>
  
   <!-- Grid column -->
   <div class="col-lg-3 col-md-6 mb-3">
       <a href="/areas">
       <img src="/img/area.jpg" class="img-fluid z-depth-1" alt="Responsive image">
       </a>
       <h3 class="text-center"><a href="/areas"><p class="white-text">Areas</p></a></h3>
   </div>
   <!-- Grid column -->

   <!-- Grid column -->
   <div class="col-lg-3 col-md-6 mb-3">
       <a href="/tribunales">
       <img src="/img/tribunal.jpg" class="img-fluid z-depth-1" alt="Responsive image">
       </a>
       <h3 class="text-center"><a href="/tribunales"><p class="white-text">Tribunales</p></a></h3>
   </div>
   <!-- Grid column -->

   <!-- Grid column -->
   <div class="col-lg-3 col-md-6 mb-3" >

       <img src="/img/info.jpg" class="img-fluid z-depth-1" alt="Responsive image">
       <h3 class="text-center" ><p class="white-text">Informacion</p></h3>
   </div>
   <!-- Grid column -->

</div>




<!--
   <div class="group form-row" style=margin-top:455px;></div>
<div class="col-md-2" ></div>
<button class="btn btn-blue-grey darken-3 waves-effect btn-lg">
<i class="fa fa-clipboard"></i>    PROYECTOS</button>

<button class="btn btn-blue-grey darken-3 waves-effect btn-lg">
<i class="fa fa-id-badge"></i>    DOCENTES / PROFESIONALES</button>

<button class="btn btn-blue-grey darken-3 waves-effect btn-lg">
<i class="fa fa-university"></i>     AREAS / SUB AREAS</button>

</div>

<div class="group form-row" style=margin-top:105px;>

<div class="col-md-3" ></div>
<button class="btn btn-blue-grey darken-3 waves-effect btn-lg">
<i class="fa fa-briefcase"></i>    TRIBUNALES</button>

<button class="btn btn-blue-grey darken-3 waves-effect btn-lg">
<i class="fa fa-graduation-cap"></i>    ESTUDIANTES</button>

<button class="btn btn-blue-grey darken-3 waves-effect btn-lg">
<i class="fa fa-info"></i>      INFORMACION</button>

</div>
-->





</body>

@endsection

