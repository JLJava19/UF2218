
<%@page import="com.ipartek.formacion.controller.VideoController"%>
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
			<li class="nav-item"><a class="nav-link" href="index.jsp">Inicio</a>
			</li>
			<c:if test="${usuario != null}">
				<li class="nav-item"><a class="nav-link"
					href="backoffice/videos">Videos</a></li>

				<li class="nav-item"><a class="nav-link"
					href="backoffice/index.jsp">Backoffice</a></li>
			</c:if>
			<c:if test="${usuario == null}">
				<li class="nav-item"><a class="nav-link" href="login.jsp">Login</a>
				</li>
			</c:if>

			<c:if test="${usuario != null}">
				<li class="nav-item">${usuario}<i class="fas fa-user"></i>
				</li>
				<li class="nav-item"><a class="nav-link" href="logout"><i
						class="fas fa-sign-out-alt"></i> Salir</a></li>
			</c:if>

			<c:if test="${usuario != null}">
				<li class="nav-item">
					<div class="dropdown">
						<button class="btn btn-secondary dropdown-toggle" type="button"
							id="dropdownMenuButton" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false">Videos
							Visualizados</button>
						<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
							<c:forEach items="${videosVistos}" var="vv">
								<a class="dropdown-item"
									href="backoffice/videos?op=<%=VideoController.OP_DETALLE%>&id=${vv.value.id}">(${vv.key})
									${vv.value.nombre}</a>
							</c:forEach>
						</div>
					</div>
				</li>
			</c:if>

		</ul>
	</div>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item"><a class="nav-link"
				href="https://github.com/JLJava19" target="_blank">Github</a>
				<div class="dropdown"></li>
		</ul>
	</div>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">

		<ul class="navbar-nav mr-auto">
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> Documentación </a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item" href="ejemplos/basico.jsp">Servlet
						Básico sin JSP</a> <a class="dropdown-item"
						href="ejemplos/basico2.jsp">Servlet Básico con JSP</a> <a
						class="dropdown-item" href="ejemplos/basico3.jsp">Servlet
						Response Content Type</a> <a class="dropdown-item"
						href="ejemplos/basico4.jsp">GET y POST</a> <a
						class="dropdown-item" href="nombres">Listado nombres</a> <a
						class="dropdown-item" href="backoffice/videos">Youtube</a> <a
						class="dropdown-item" href="ejemplos/jsp.jsp">JSP</a> <a
						class="dropdown-item" href="jstl">JSTL - Java Server Tag
						Libraries</a> <a class="dropdown-item" href="ejemplos/el.jsp">EL -
						Expression Language</a> <a class="dropdown-item"
						href="ejemplos/session.jsp">Session</a> <a class="dropdown-item"
						href="ejemplos/cookies.jsp">Cookies</a> <a class="dropdown-item"
						href="ejemplos/filtros.jsp">Filtros</a> <a class="dropdown-item"
						href="ejemplos/listeners.jsp">Listeners o escuchadores de
						eventos</a> <a class="dropdown-item" href="ejemplos/ciclo-de-vida.jsp">Ciclo
						de vida</a> <a class="dropdown-item" href="ejemplos/error.jsp">Error
						page</a>

					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#">Something else here</a>
				</div></li>
		</ul>
	</div>


	<div class="collapse navbar-collapse" id="navbarSupportedContent">

		<ul class="navbar-nav mr-auto">
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> Ejercicios </a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item" href="nombres">Listado nombres</a>
					<a class="dropdown-item" href="backoffice/videos">Youtube</a>
					<a class="dropdown-item" href="ejemplos/calculadora.jsp">Calculadora</a>
					<a class="dropdown-item" href="ejemplos/ahorcado.jsp">Ahorcado</a>

					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#">Something else here</a>
				</div></li>
		</ul>
	</div>


</nav>
<!-- end navar -->


<main class="container">