<!DOCTYPE html>
<html>
<head>
<head>
  <title>Docentes & Profesionales</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
    /* Set height of the grid so .sidenav can be 100% (adjust if needed) */
    .row.content {height: 1500px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      background-color: #f1f1f1;
      height: 100%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height: auto;} 
    }
  </style>
</head>
<body>
<div class="container-fluid">
  <div class="row content">
    <div class="col-sm-3 sidenav">
      <h2>Docentes & Profesionales</h2>
      <ul class="nav nav-pills nav-stacked">
        <li class="active"><a href="#section1">Home</a></li>
        <li><a href="#section2">Nuevo Docente</a></li>
        <li><a href="#section3">Nuevo Profesional</a></li>
      </ul><br>
   </div>
<div class='container'>
	<h1>Docentes & Profesionales</h1>
	<div class='table-responsive'>
		<h2>Docentes</h2>
		<table class="table table-striped" class="table table-bordered">
		  <thead>
		    <tr>
		      <th><font size="3">Codigo Docente</font></th>
		      <th><font size="3">Nombre Docente</font></th>
		    </tr>
		  </thead>
		  <tbody>
		    <tr>
		      <th>1</th>
		      <td>Mark</td>
		    </tr>
		    <tr>
		      <th >2</th>
		      <td>Jacob</td>
		    </tr>
		    <tr>
		      <th>3</th>
		      <td>Larry the Bird</td>
		    </tr>
		  </tbody>
		</table>
	</div>
	<div class='table-responsive'>
		<h2>Profesionales</h2>
		<table  class="table table-bordered">
		  <thead>
		    <tr>
		      <th><font size="3">Codigo Profesional</font></th>
		      <th><font size="3">Nombre Docente</font></th>
		    </tr>
		  </thead>
		  <tbody>
		    <tr>
		      <th>1</th>
		      <td>Mark</td>
		    </tr>
		    <tr>
		      <th >2</th>
		      <td>Jacob</td>
		    </tr>
		    <tr>
		      <th>3</th>
		      <td>Larry the Bird</td>
		    </tr>
		  </tbody>
		</table>
	</div>
</div>

</body>
</html>