<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<body>
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
<td>Frameworks Web Favoritos :</td>
<td>
<c:forEach items="${customer.favFramework}" var="current">
   [<c:out value="${current}" />]
</c:forEach>
</td>
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
<ul>
    <li><a href="registro.htm">Agregar otro contacto</a></li>
    <li><a href="index.jsp">Volver a inicio</a></li>
</ul>

</body>
</html>