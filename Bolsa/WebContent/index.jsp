<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="css/styles.css" rel="stylesheet" type="text/css">
<%-- <%@ include file="header.html" %> --%>
</head>
<body>

<ul>
  <li> Inicio </li>
  <li> Administracion </li>
  <li> Acerca </li>
</ul>


<form action="buscar" method="post">
	<input name="query" type="text" placeholder="buscar oferta">
	<input type="submit" value="buscar">
</form>




	
	<p><a href="vacante?action=lista">Más ofertas</a></p>


<br>

	<c:forEach items="${ultimas}" var="vacants" varStatus="status"> 
   <h1>Ofertas Recientes</h1>
	<div id="ofertas_recientes">
	<h2>${vacants.id}</h2>
	<p>${vacants.nombre}</p>
	<p>${vacants.descripcion}</p>
	<p>${vacants.detalle}</p>
	<p>Lorem ipsum dolor sit amet.!</p>
	<a href="vacante?action=ver&id=${vacants.id}">ver detalle</a>
	</div>
</c:forEach>
</body>
</html>