<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
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
			<a href="#">Eliminar</a>
			</td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>