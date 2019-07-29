<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@page errorPage="error.jsp" %>  

<%
	//Gestión del idioma

%>
<c:set var="idiomaSeleccionado" value="${not empty sessionScope.idiomaSeleccionado ? sessionScope.idiomaSeleccionado : 'es_ES'}" scope="session" />
<fmt:setLocale value="${idiomaSeleccionado}" />
<fmt:setBundle basename="i18n.i18nmessages" /> 


<!DOCTYPE html>
<html lang="es">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">

  <!-- Custom fonts for this template -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="JEE">
  <base href="${pageContext.request.contextPath}/">
  		
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="resources/vendors/fontawesome-free-5.9.0-web/css/all.min.css">

  <link rel="stylesheet" href="resources/css/styles.css?d="<%=System.currentTimeMillis()%>>
  <title>JEE</title>
</head>

<body>