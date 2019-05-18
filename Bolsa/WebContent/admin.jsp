<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
  <!-- <link href="css/small-business.css" rel="stylesheet">  -->
<link href="css/styles.css" rel="stylesheet">
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
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
            <a class="nav-link" href="admin?action=crear">Crear Vacante
              <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="vacante?action=lista">Vacantes</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="admin?action=logout">Salir</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
	<br />
<!-- 	<div class="container"> -->
<!-- <div class="row"> -->
<!-- 	<div class="panel panel-primary"> -->
<!-- 		<div class="panel-heading"> -->
<!-- 			<h3 class="panel-title">Bienvenido</h3> -->
<!-- 		</div> -->
<!-- 		<div class="panel-body"> -->
<%-- 			<h2 class="panel-title"><b>Nombre de usuario<br /><br />${usuario.username}<br /></b></h2> --%>
<%-- 			<h2 class="panel-title"><b>Email<br /><br />${usuario.email}<br /></b></h2> --%>
<%-- 			<h2 class="panel-title"><b>Perfil<br /><br />${usuario.perfil}<br /></b></h2> --%>
<%-- 			<h2 class="panel-title"><b>Estatus<br /><br />${usuario.estatus}<br /></b></h2> --%>
<!-- 		</div> -->
<!-- 	</div> -->
<!-- 	</div>	row -->

<!-- </div> container -->

<div class="container"> 
<div class="row">


    <!-- Content Row -->
    
      <div class="col-md-4 mb-5">
        <div class="card h-100">
          <div class="card-body">
            <h2 class="card-title">Bienvenido ${usuario.nombre}</h2>
            <p class="card-text"><b>Nombre de usuario:</b> <br />${usuario.username} <br /> <b>Email:</b> <br />${usuario.email} <br /> <b>Perfil:</b> <br /> ${usuario.perfil} <br /> <b>Estatus:</b><br /> ${usuario.estatus}</p>

          </div>
        </div>
      </div>
      </div> <!-- /.row -->
       </div> <!-- container -->
    
   


<div id="footer">
<footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Your Website 2019</p>
    </div>
  
  </footer>
  </div>

</body>
</html>