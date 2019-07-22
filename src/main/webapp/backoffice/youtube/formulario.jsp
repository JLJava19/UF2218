<%@page import="com.ipartek.formacion.controller.VideoController"%>

<%@include file="../../includes/header.jsp"%>
<%@include file="../../includes/navbar.jsp"%>

<h1>
	Detalle Video <a href="backoffice/videos?op=0"><i
		class="fas fa-angle-double-left"></i></a>
</h1>

<div class="row">
	<div class="col">

		<%@include file="../../includes/mensaje.jsp"%>

		<form action="backoffice/videos" method="post">

			<input type="hidden" name="op"
				value="<%=VideoController.OP_GUARDAR%>">
			<div class="form-group row">
				<label for="id" class="col-sm-2 col-form-label">Id:</label>
				<div class="col-sm-10">
					<input type="text" name="id" class="form-control"
						value="${video.id}" readonly>
				</div>
			</div>
			<div class="form-group row">
				<label for="nombre" class="col-sm-2 col-form-label">Nombre:</label>
				<div class="col-sm-10">
					<input type="text" name="nombre" class="form-control" required
						placeholder="Mínimo 3 caracteres, máximo 50"
						value="${video.nombre}">
				</div>
			</div>
			<div class="form-group row">
				<label for="codigo" class="col-sm-2 col-form-label">Codigo:</label>
				<div class="col-sm-10">
					<input type="text" name="codigo" class="form-control" required
						placeholder="Exactamente 11 caracteres" value="${video.codigo}">
				</div>
			</div>

			<div class="form-group row">
				<div class="col-sm-12">
					<input type="submit" class="btn btn-outline-success btn-block mb-2"
						value="${(video.id != -1)?'Modificar':'Crear'}">
				</div>
			</div>


		</form>
		<c:if test="${video.id != -1}">


			<input type="hidden" name="op"
				value="<%=VideoController.OP_ELIMINAR%>">
			<input type="hidden" name="id" value="${video.id}" readonly>
			<!-- Button trigger modal -->
			
			<button type="button" class="btn btn-outline-danger btn-block"
				data-toggle="modal" data-target="#exampleModal">
				</form>
				Eliminar
			</button>

			<!-- Modal -->
			<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">¿Estas Seguro
								de ELIMINAR el registro?</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<p>Cuidado porque operación no es reversible</p>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Close</button>
							<form action="backoffice/videos" method="post">
								<input type="hidden" name="op"
									value="<%=VideoController.OP_ELIMINAR%>"> <input
									type="hidden" name="id" value="${video.id}" readonly> <input
									type="submit" value="Eliminar" class="btn btn-danger btn-block">
							</form>
						</div>
					</div>
				</div>
			</div>


		</c:if>
	</div>


	<div class="col">

		<iframe width="560" height="315"
			src="https://www.youtube.com/embed/${video.codigo}" frameborder="0"
			allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
			allowfullscreen></iframe>
	</div>
</div>

<%@include file="../../includes/footer.jsp"%>