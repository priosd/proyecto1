<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Small Business - Start Bootstrap Template</title>
<link href="css/styles.css" rel="stylesheet">
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
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
  <div class="container">
  	<div class="row">
	<table class="table table-striped">
		<tr>
			<th>ID</th>
			<th>Vacante</th>
			<th>Publicado</th>
		</tr>
		
<!-- 		Columna Dinamica -->
		<c:forEach items="${vacantes}" var="vacante">
		<tr>
			<td>${vacante.id}</td>
			<td>${vacante.nombre}</td>
			<td>${vacante.fechaPublicacion}</td>
			<td>
			<a href="vacante?action=ver&id=${vacante.id}">Ver detalles</a>
			<c:if test="${usuario.id >0 }">
			<a href="admin?action=eliminar&idVacante=${vacante.id}">Eliminar</a>
			</c:if>
			</td>
		</tr>
		</c:forEach>
	</table>
	</div><!-- 	row -->

	</div><!-- 	container -->

	
<footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Your Website 2019</p>
    </div>
  
  </footer>

</body>
</html>