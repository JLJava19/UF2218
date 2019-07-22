<%@include file="../includes/header.jsp"%>

<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>

<%@include file="../includes/navbar.jsp"%>

<h1>Ejemplo Listado nombres GET y POST</h1>

<div class="container mt-5 mb-3">
	<div class="row  d-flex justify-content-around mb-3">
		<div class="col-12 col-md-8 p-3 btn-light">
			
			<div class="form-group">
				<form class="form-inline" action="nombres" method="get">
					<label for="buscar" class="sr-only">Buscar</label>
					<input type="search" 
							class="form-control mr-3" 
							name="buscar"
							value="${buscar}"
							placeholder="Dime su nombre" 
							required>
					<button type="submit" class="btn btn-dark mr-3">
						<i class="fas fa-search"></i>
						Obtener
					</button>
					<div class="form-control alert-info" role="alert">
						<a href="nombres" class="alert-link">Ver todos</a>
					</div>
				</form>
				
			</div>
			
			<% 
			if (request.getAttribute("buscar") != null){
			%>
				<p class="lead">Resultados para la busqueda de ${buscar}</p>
				<%
				if ((Boolean) request.getAttribute("encontrado")){
				%>
				<div class="alert alert-success" role="alert">
					${mensaje}
				</div>
				<%}else {%>
					<div class="alert alert-danger" role="alert">
					${mensaje}
				</div>
				<%} %>
			<%
			}
			%>
			<hr>
			<ul class="list-group">
				<%
				if (request.getAttribute("listadoNombres") != null) {
					ArrayList<String> lista = (ArrayList<String>) request.getAttribute("listadoNombres");

						for (String n : lista) {
				%>
						<li class="list-group-item"><%=n.toString()%></li>
				<%
						}
					}
				%>
			</ul>
		</div>
		<div class="col-12 col-md-4 p-3 bg-warning text-dark">
			<h3 class="display-4">Nuevo usuario</h3>
			<div class="dropdown-divider"></div>
			<form action="nombres" method="post">
				<input type="search" 
						class="form-control"
						name="nombre" 
						placeholder="Dime tu nombre"
						required> 
				<br> 
				<button type="submit" class="btn btn-secondary btn-lg btn-block"><i class="fas fa-user-ninja"></i> Nuevo</button>
			</form>
		</div>
	</div>
</div>







<%@include file="../includes/footer.jsp"%>