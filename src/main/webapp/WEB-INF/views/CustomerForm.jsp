<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<style>
.error {
	color: #ff0000;
}
.errorblock{
	color: #000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
	padding:8px;
	margin:16px;
}

</style>
</head>

<body>
<h1>Agenda</h1>    
<h2>Registro de contacto</h2>

<form:form method="POST" commandName="customer">

<form:errors path="*" cssClass="errorblock" element="div"/>

<table>
<tr>
<td>Nombre de Usuario : </td>
<td><form:input path="userName" /></td>
<td><form:errors path="userName" cssClass="error" /></td>
</tr>
<tr>
<td>Telefono : </td>
<td><form:input path="userPhone" /></td>
<td><form:errors path="userPhone" cssClass="error" /></td>
</tr>
<tr>
<td>Correo : </td>
<td><form:input path="userEmail" /></td>
<td><form:errors path="userEmail" cssClass="error" /></td>
</tr>
<tr>
<td>Fecha de nacimiento : </td>
<td><form:input path="userBirthday" type="date"/></td>
<td><form:errors path="userBirthday" cssClass="error" /></td>
</tr>
<tr>
<td>Direccion : </td>
<td><form:textarea path="address" /></td>
<td><form:errors path="address" cssClass="error" /></td>
</tr>
<tr>
<td>Sexo: </td>
<td>
<form:radiobutton path="sex" value="H"/>Hombre 
<form:radiobutton path="sex" value="M"/>Mujer
</td>
<td><form:errors path="sex" cssClass="error" /></td>
</tr>
<tr>
<td>Pais : </td>
<td>
<form:select path="country">
	<form:option value="NONE" label="--- Select ---"/>
	<form:options items="${countryList}" />
</form:select>
</td>
<td><form:errors path="country" cssClass="error" /></td>
</tr>
 
<form:hidden path="secretValue" />

<tr>
<td colspan="3"><input type="submit" /></td>
</tr>
</table>
</form:form>

</body>
</html>