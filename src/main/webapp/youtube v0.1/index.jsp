<%@include file="../includes/header.jsp"%>
<%@include file="../includes/navbar.jsp"%>

<%@page import="com.ipartek.formacion.controller.VideoController"%>

<h1>Listado Videos Youtube</h1>



<table class="table table-hover">
	<thead>
		<tr>
			<th scope="col">#ID</th>
			<th scope="col">NOMBRE</th>
			<th scope="col">CÓDIGO</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${videos}" var="video">
			<tr>
				<th scope="row">${video.id}</th>
				<td><a href="videos?op=<%=VideoController.OP_DETALLE%>&id=${video.id}">${video.nombre}</a></td>
				<td>${video.codigo}</td>
			</tr>
		</c:forEach>
	</tbody>
</table>

<%@include file="../includes/footer.jsp"%>