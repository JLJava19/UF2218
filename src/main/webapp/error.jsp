<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isErrorPage="true"%>

<!DOCTYPE html>
<html lang="es">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<!-- Custom fonts for this template -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="JEE">
<base href="${pageContext.request.contextPath}/">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="resources/vendors/fontawesome-free-5.9.0-web/css/all.min.css">

<link rel="stylesheet" href="resources/css/styles.css">
<title>JEE</title>
</head>

<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="#">JEE</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="#">Inicio
						<span class="sr-only">(current)</span>
				</a></li>

				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> Ejercicios </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="ejemplos/basico.jsp">Servlet
							Básico sin JSP</a> <a class="dropdown-item"
							href="ejemplos/basico2.jsp">Servlet Básico con JSP</a> <a
							class="dropdown-item" href="ejemplos/basico3.jsp">Servlet
							Response Content Type</a> <a class="dropdown-item"
							href="ejemplos/basico4.jsp">GET y POST</a> <a
							class="dropdown-item" href="nombres">Listado nombres</a> <a
							class="dropdown-item" href="videos">Youtube</a> <a
							class="dropdown-item" href="ejemplos/jsp.jsp">JSP</a> <a
							class="dropdown-item" href="jstl">JSTL - Java Server Tag
							Libraries</a> <a class="dropdown-item" href="ejemplos/el.jsp">EL
							- Expression Language</a> <a class="dropdown-item"
							href="ejemplos/session.jsp">Session</a> <a class="dropdown-item"
							href="ejemplos/cookies.jsp">Cookies</a> <a class="dropdown-item"
							href="ejemplos/filtros.jsp">Filtros</a> <a class="dropdown-item"
							href="ejemplos/listeners.jsp">Listeners o escuchadores de
							eventos</a> <a class="dropdown-item"
							href="ejemplos/ciclo-de-vida.jsp">Ciclo de vida</a> <a
							class="dropdown-item" href="ejemplos/error.jsp">Error page</a>

						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#">Something else here</a>
					</div></li>
				<li class="nav-item"><a class="nav-link"
					href="https://github.com/JLJava19" target="_blank">Github</a></li>
				<li class="nav-item"><a class="nav-link disabled" href="#">Disabled</a>
				</li>
			</ul>
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Buscar" aria-label="Search">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Buscar</button>
			</form>
		</div>
	</nav>

	<!-- Navbar -->

	<main class="container">



	<h1>Error 500</h1>
	<p>Lo sentimos pero parece que hay algun problema</p>
	<p>
		Madanos un <a href="mailto:formacion@ipartek.com">email</a> para que
		lo solucionemos
	</p>

	<div class="p-2 border border-danger">
		<h2>Usar solo en Desarrollo</h2>
		<p class="text-danger"><%=exception%></p>
		<!-- Stack trace -->
		<jsp:scriptlet>exception.printStackTrace(new java.io.PrintWriter(out));</jsp:scriptlet>
	</div>


	</main>
	<!-- main -->



	<!-- Optional JavaScript -->
	<script src="resources/js/main.js"></script>
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</body>