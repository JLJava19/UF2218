<%@page import="com.ipartek.formacion.controller.VideoController"%>

<%@include file="../includes/header.jsp"%>
<%@include file="../includes/navbar.jsp"%>

	<h1>Listado Videos</h1>
	
	
	<%@include file="../includes/mensaje.jsp"%>
			
	
	<a href="videos?op=<%=VideoController.OP_NUEVO%>" class="mb-3 btn btn-outline-primary btn-block btn-lg"><p class="h2"> <i class="far fa-plus-square"></i>Nuevo Video</p></a>
	
	<ul class="list-group">
	  <c:forEach items="${videos}" var="v">	
	  	<li class="list-group-item"><img src="https://img.youtube.com/vi/${v.codigo}/default.jpg"><a href="videos?op=<%=VideoController.OP_DETALLE%>&id=${v.id}"> ${v.nombre}</a></li>
	  </c:forEach>	  	  
	</ul>

	
	
<%@include file="../includes/footer.jsp"%>

<%@include file="../includes/footer.jsp"%>