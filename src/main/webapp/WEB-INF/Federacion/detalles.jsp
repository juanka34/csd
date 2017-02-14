
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<c:set var="path" value="${pageContext.request.contextPath}" scope="request" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="${path}/static/js/equipo.js"></script>
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>


</head>
<body>
<div style="text-align: center;font-size:2cm;color: BLACK; ;">
	<h1>LIGA</h1>
				<td > ${federacion.nombre}</td><br>
			
				<td><img alt="" src="${federacion.imagen}" height="150px"></td>
			
</div>
<table  class="table"style="text-align:center; background-color: transparent;">
		<thead>
			<tr style="font-weight:bold;font-size:xx-large ;color: black;text-align: center;">
			
			<h1  style="text-align: center;">EQUIPOS</h1>
				
				<td style="width: 50%">Nombre</td>
				<td style="width: 50%">Escudo</td>				
					
			</tr>
		</thead>
		<tbody >
			<c:forEach items="${federacion.equipos}" var="equi">
				<tr style="background-color:transparent;font-weight:bold;font-size: large;text-align: center;" data-id="${equipo.id}">
					
					<td>${equi.nombre}</td>
					<td><img alt="" src="${equi.imagen}" height="50px"></td>
						
					<td></td>
					</tr>
			</c:forEach>
		</tbody>

	</table>


</body>
</html>