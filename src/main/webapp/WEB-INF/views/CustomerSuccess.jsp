<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
	<head>
		<meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <title>Agenda Meltsan</title>
	    <meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="<c:url value='/resources/bootstrap/css/bootstrap.min.css'/>" />
		<link rel="stylesheet" type="text/css" href="<c:url value='/resources/sidebar/demo.css'/>" />
		<link rel="stylesheet" type="text/css" href="<c:url value='/resources/sidebar/sidebar-left.css'/>" />		
		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
		<script type="text/javascript" src="<c:url value="/resources/angular.min.js"/>"></script>
	</head>
<body>
	<aside class="sidebar-left">
		<a class="company-logo" href="#">AgM</a>
		<div class="sidebar-links">
			<a class="link-blue" href="/Agenda"><i class="fa fa-home"></i>Inicio</a>
			<a class="link-green selected" href="registro.htm"><i class="fa fa-user-plus"></i>Nuevo contacto</a>
			<a class="link-yellow" href="#"><i class="fa fa-refresh"></i>Actualizar</a>
			<a class="link-red" href="#"><i class="fa fa-user-times"></i>Eliminar contacto</a>
		</div>
	</aside>
	<div class="main-content">
		<div class="row">
			<h2>Se ha agrego la siguiente informacion</h2>			
			<table>
			<tr>
			<td>Nombre :</td><td>${customer.userName}</td>
			</tr>
			<tr>
			<td>Telefono :</td><td>${customer.userPhone}</td>
			</tr>
			<tr>
			<td>Correo :</td><td>${customer.userEmail}</td>
			</tr>
			<tr>
			<td>Fecha de nacimiento :</td><td>${customer.userBirthday}</td>
			</tr>
			<tr>
			<td>Direccion :</td><td>${customer.address}</td>
			</tr>
			<tr>
			<td>Sexo :</td><td>${customer.sex}</td>
			</tr>
			<tr>
			<td>Pais :</td><td>${customer.country}</td>
			</tr>
			</table>
			<br>
			<br>
			<b><i>Nota: falta dar de alta en una base de datos los registros</i></b>
		</div>
	</div>

</body>
</html>