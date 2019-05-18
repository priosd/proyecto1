<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/small-business.css" rel="stylesheet">
<link href="css/styles.css" rel="stylesheet">
</head>
<body>
<script>
$('.openBtn').on('click',function(){
    $('.modal-body').load('mensaje.jsp',function(){
        $('#myModal').modal({show:true});
    });
});
</script>
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
  <div class="container">
<form action="vacante" method="post">
<br />
	<div class="form-group row">
	
	<label class="col-sm-2 col-form-label" for="nombre">Nombre</label>
		<div class="col-sm-10">
	<input  size="40" name="nombre" type="text" placeholder="Escribe el nombre de la vacante" requiered/>
	</div>
	</div> <!-- 	form-group row -->
	
	
	<div class="form-group row">
	<label class="col-sm-2 col-form-label" for="descripcion">Descripcion</label>
	<div class="col-sm-10">
	<textarea rows="5" cols="40" name="descripcion" placeholder="Escribe una descripcion de la vacante" requiered></textarea>
	</div>
	</div> <!-- 	form-group row -->
	
	<div class="form-group row">
	<label class="col-sm-2 col-form-label" for="detalles">Descripcion de los detalles</label>
	<div class="col-sm-10">
	<textarea rows="5" cols="40" name="detalles"  placeholder="Escribe los detalles de la vacante" /></textarea>
	</div>
	</div> <!-- 	form-group row -->
	
	<div class="form-group row">
    <div class="col-sm-10 offset-sm-2">
      <button type="submit" class="btn btn-primary openBtn">Guardar</button>
    </div>
  </div>
	
</form>

	
</div> <!-- container -->

<div id="footer">
 <footer class="py-5 bg-dark">
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