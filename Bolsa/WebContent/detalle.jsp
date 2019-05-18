<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Small Business - Start Bootstrap Template</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
<link href="css/small-business.css" rel="stylesheet">
    <link href="css/styles.css" rel="stylesheet">
<title>Insert title here</title>
  
      
</head>

<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="#">Bienvenido</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active">
            <a class="nav-link" href="homePage">Inicio
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="admin?action=login">Administracion</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Acerca</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>


<br /><br />
  
  <div class="container">

<div class="row">
 <!-- Content Row -->
    
      <div class="col-md-4 mb-5">
        <div class="card h-100">
          <div class="card-body">
            <h2 class="card-title">Detalle</h2>
            <p class="card-text">Vacante: ${vacante.nombre} <br /> Descripcion: ${vacante.descripcion} <br /> Detalle: ${vacante.detalle}</p>

          </div>
         <div class="card-footer">
             <a href="vacante?action=lista" class="btn btn-primary btn-sm">Ver todas las ofertas</a>
          </div>      
        </div>
      </div>
      <!-- /.col-md-4 -->
      
      </div>
    <!-- /.row -->
    

  </div>

  <!-- /.container -->
  
  <div id="footer">
 <footer class="py-5 bg-dark" >
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Your Website 2019</p>
    </div>
    <!-- /.container -->
  </footer>
	</div>
  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>
</html>