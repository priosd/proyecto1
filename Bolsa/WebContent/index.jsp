<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<%-- <%@ include file="header.html" %> --%>
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
            <a class="nav-link" href="#">Inicio
              <span class="sr-only">(current)</span>
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


<!-- Page Content -->
  <div class="container">

    <!-- Heading Row -->
    <div class="row align-items-center my-5">
      <div class="col-lg-7">
        <img class="img-fluid rounded mb-4 mb-lg-0" src="images/index_job.jpg" alt="">
      </div>
      <!-- /.col-lg-8 -->
      <div class="col-lg-5">
        <h1 class="font-weight-light">Te conectamos con las principales empresas</h1>
        <p>Encuentra las mejores Ofertas de Trabajo en el Perú. Sube tu CV y postula a los puestos de trabajo de acuerdo a tu Perfi</p>
        <a class="btn btn-primary" href="vacante?action=lista">Todas las ofertas...</a>
        
       
      </div>
      <!-- /.col-md-4 -->
    </div>
    <!-- /.row -->

    <!-- Call to Action Well -->
    <div class="card text-white bg-secondary my-5 py-4 text-center">
      <div class="card-body">
        <p class="text-white m-0">Solo aquellos que se atreven son capaces de conseguir grandes éxitos</p>
      </div>
    </div>
    
    
<!--   <h1>Ofertas Recientes</h1> -->
<!-- 	<div id="ofertas_recientes"> -->
<%-- 	<h2>${vacants.id}</h2> --%>
<%-- 	<p>${vacants.nombre}</p> --%>
<%-- 	<p>${vacants.descripcion}</p> --%>
<%-- 	<p>${vacants.detalle}</p> --%>
<!-- 	<p>Lorem ipsum dolor sit amet.!</p> -->
<%-- 	<a href="vacante?action=ver&id=${vacants.id}">ver detalle</a> --%>
<!-- 	</div>   -->
<div class="row">
<c:forEach items="${ultimas}" var="vacants" varStatus="status"> 
    <!-- Content Row -->
      <div class="col-md-4 mb-5">
        <div class="card h-100">
          <div class="card-body">
            <h2 class="card-title">Ofertas Recientes</h2>
            <p class="card-text">ID: ${vacants.id} <br /> Vacante: ${vacants.nombre} <br /> Descripcion: ${vacants.descripcion} <br /> Detalle: ${vacants.detalle}</p>
<%--             <p class="card-text">${vacants.nombre}</p> --%>
<%--             <p class="card-text">${vacants.descripcion}</p> --%>
<%--             <p class="card-text">${vacants.detalle}</p> --%>
          </div>
          <div class="card-footer">
            <a href="vacante?action=ver&id=${vacants.id}" class="btn btn-primary btn-sm">Ver detalle</a>
          </div>
        </div>
      </div>
      </c:forEach>
      </div>
    
    <!-- /.row -->

</div>
<!-- container -->

    
  

  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Your Website 2019</p>
    </div>
    <!-- /.container -->
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- <form action="buscar" method="post"> -->
<!-- 	<input name="query" type="text" placeholder="buscar oferta"> -->
<!-- 	<input type="submit" value="buscar"> -->
<!-- </form> -->




	
<!-- 	<p><a href="vacante?action=lista">Más ofertas</a></p> -->



	
</body>
</html>