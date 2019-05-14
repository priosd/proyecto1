<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@ include file="header_crearVacante.html" %>
</head>
<body>

<form action="vacante" method="post">
	<label for="nombre">Nombre</label>
	<br />
	<input name="nombre" type="text" placeholder="Escribe el nombre de la vacante" requiered/>
	<br />
	<label for="descripcion">Descripcion</label>
	<br />
	<textarea name="descripcion" placeholder="Escribe una descripcion de la vacante" requiered></textarea>
	<br />
	<label for="detalles">Descripcion de los detalles</label>
	<br />
	<textarea name="detalles"  placeholder="Escribe los detalles de la vacante" /></textarea>
	<br />
	<input type="submit" value="guardar"/>
</form>
</body>
</html>