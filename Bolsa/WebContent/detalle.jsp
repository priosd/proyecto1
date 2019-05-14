<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div id="detalle_vacante">
<h5><b>Vacante</b>${vacante.nombre}</h5>
<h5><b>Publicado</b>${vacante.fechaPublicacion}</h5>
<b>descripcion</b><br />
<p>${vacante.descripcion}</p>
<b>Detalles de la vacante</b><br />
${vacante.detalle}
</div>

</body>
</html>