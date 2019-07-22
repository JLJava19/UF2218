<%@page import="com.ipartek.formacion.controller.VideoController"%>

<%@include file="../includes/header.jsp"%>
<%@include file="../includes/navbar.jsp"%>

<h1>Detalle Video</h1>

<c:if test="${mensaje != null}">

	<div class="alert alert-${mensaje.tipo} alert-dismissible fade show"
		role="alert">
		<input type="hidden" name="op" value="<%=VideoController.OP_GUARDAR%>">
		<p>${mensaje.texto}</p>		
	</div>

</c:if>

<form action="videos" method="post">
	<input type="hidden" id="op" name="op"
		value="<%=VideoController.OP_LISTAR%>">
	<div class="form-group row">
		<div class="col-sm-12">
			<a href="videos?op=<%=VideoController.OP_LISTAR%>"
				class="btn btn-primary btn-lg active btn-block" role="button"
				aria-pressed="true">Listar videos</a>
		</div>
	</div>
	<div class="form-group row">
		<label for="id" class="col-sm-2 col-form-label">Id</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="id" name="id"
				placeholder="id" value="${video.id}" readonly>
		</div>
	</div>
	<div class="form-group row">
		<label for="titulo" class="col-sm-2 col-form-label">Título</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" name="titulo" id="titulo"
				placeholder="titulo" value="${video.nombre}">
		</div>
	</div>
	<div class="form-group row">
		<label for="codigo" class="col-sm-2 col-form-label">Código</label>
		<div class="col-sm-10">
			<input type=text class="form-control" name="codigo" id="codigo"
				placeholder="codigo" value="${video.codigo}">
		</div>
	</div>


	<div class="form-group row">
		<div class="col-sm-12">
			<button type="submit" class="btn btn-outline-success btn-block"
				onclick="elegirOpcion(<%=VideoController.OP_CREAR%>)">Nuevo
				Video</button>
		</div>
	</div>

	<div class="form-group row">
		<div class="col-sm-6">
			<button type="submit" class="btn btn-outline-warning btn-block"
				onclick="elegirOpcion(<%=VideoController.OP_MODIFICAR%>)">Modificar</button>
		</div>
		<div class="col-sm-6">
			<button type="submit" class="btn btn-outline-danger btn-block"
				onclick="elegirOpcion(<%=VideoController.OP_BORRAR%>)">Borrar</button>
		</div>
	</div>
</form>


<%@include file="../includes/footer.jsp"%>