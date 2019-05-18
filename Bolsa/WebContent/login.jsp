<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
  <link href="css/small-business.css" rel="stylesheet">
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
          <li class="nav-item">
            <a class="nav-link" href="homePage">Inicio
              
            </a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="#">Administracion</a>
            <span class="sr-only">(current)</span>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Acerca</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

	<div class="container">
		<center>
		<h4>Registrate</h4>
		<h5>Usuario: admin</h5>
		<h5>Contraseña: 123456</h5>
		</center>
		<form action="admin" class="form-signin" method="post">
			<h2 class="form-signin-heading">Ingreso al Sistema</h2>
			<label for="user" class="sr-only">Nombre de usuario</label>
			<input type="text" id="user" name="user" class="form-control" placeholder="Ingrese su usuario"/>
			<br />
			<label for="pass" class="sr-only">Contraseña</label>
			<input type="password" id="pass" name="pass" class="form-control" placeholder="Ingrese su contraseña" />
			<p class="text-danger">${message}</p>
			<button class="btn btn-lg btn-primary btn-block" type="submit">Entrar</button>
		</form>
		</div>
<!-- 	 container -->
<div id="footer">
<footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Your Website 2019</p>
    </div>
    <!-- /.container -->
  </footer>
  </div>
</body>
</html>