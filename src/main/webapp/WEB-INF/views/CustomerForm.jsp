<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<div  class="main-content">
	<div class="row">
	<h2>Registro de contacto</h2>
	<form:form method="POST" role="form" commandName="customer">
		<form:errors path="*" cssClass="alert alert-danger fade in" element="div"/>
		 <div class="col-md-6">
			<div class="form-group">
				<label for="ejemplo_nombre">Nombre de Usuario :</label>
				<form:input path="userName" class="form-control" />
				<form:errors path="userName" cssClass="error" />
			</div>
			<div class="form-group">
				<label for="ejemplo_telefono">Teléfono :</label>
				<form:input path="userPhone" class="form-control" />
				<form:errors path="userPhone" cssClass="error" />
			</div>
			<div class="form-group">
				<label for="ejemplo_correo">Correo</label>
				<form:input path="userEmail" class="form-control"  />
				<form:errors path="userEmail" cssClass="error" />
			</div>
			<div class="form-group">
				<label for="ejemplo_fechaN">Fecha de nacimiento :</label>
				<form:input path="userBirthday" type="date" class="form-control" />
				<form:errors path="userBirthday" cssClass="error" />
			</div>
		</div>
		<div class="col-md-6">
			<div class="form-group">
				<label for="Direccion">Dirección</label>
				<form:textarea path="address" class="form-control" />
				<form:errors path="address" cssClass="error" />
			</div>
			
			<div class="form-group">
				<label for="Sexo">Sexo:</label>
				<form:radiobutton path="sex" value="H" />Hombre 
				<form:radiobutton path="sex" value="M" />Mujer
				<form:errors path="sex" cssClass="error" />
			</div>
			
			<div class="form-group">
				<label for="Pais">Pais</label>
				<form:select path="country" class="form-control" >
				<form:option value="NONE" label="--- Select ---"/>
					<form:options items="${countryList}" />
				</form:select>
				<form:errors path="country" cssClass="error" />
			</div>	
			<div class="form-group">
				<form:hidden path="secretValue" />
				<input type="submit" class="btn btn-success" />
			</div>
		  </div>
		</form:form>
	</div>
</div>

		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script type="text/javascript" src="<c:url value="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"/>"></script>
	    <!-- Include all compiled plugins (below), or include individual files as needed -->
		<script type="text/javascript" src="<c:url value="/resources/bootstrap/js/bootstrap.min.js"/>"></script>
</body>
</html>