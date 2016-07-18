<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html lang="en-US">
	<head>
		<meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <title>Agenda</title>
	    <meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="<c:url value='/resources/bootstrap/css/bootstrap.min.css'/>" />
		<script type="text/javascript" src="<c:url value="/resources/angular.min.js"/>"></script>
	</head>
	<body>
		<div class="container">
			<div class="row">
				<div class="form-group col-sm-12 col-md-3 col-lg-3">
				
				</div>
				<div class="form-group col-sm-12 col-md-6 col-lg-3" ng-app="">
					<h2>Agenda</h2><br/>
					<form action="Login.do" method="post" class="form-horizontal" role="form">
						<div class="form-group">
		                    <input type="text" class="form-control" name="username" placeholder="escribe tu busqueda" required ng-model="search">
							<h3>{{search}}</h3>
						</div> 
					</form>
				</div>
				<div class="form-group col-sm-12 col-md-3 col-lg-3">
					<br/><br/><br/><br/>
					<a href="#" class="btn btn-info">Agregar Contacto</a><br/>
					<a href="#" class="btn btn-info">Eliminar Contacto</a><br/>
				</div>
			</div>
		</div>
		
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script type="text/javascript" src="<c:url value="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"/>"></script>
	    <!-- Include all compiled plugins (below), or include individual files as needed -->
		<script type="text/javascript" src="<c:url value="/resources/bootstrap/js/bootstrap.min.js"/>"></script>
	</body>
</html>



