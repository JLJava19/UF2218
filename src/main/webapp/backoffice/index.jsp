<%@page import="com.ipartek.formacion.controller.listener.UsuariosLogeadosListener"%>

<%@include file="../includes/header.jsp"%>
<%@include file="../includes/navbar.jsp"%> 
<%@include file="../includes/mensaje.jsp"%>
<meta http-equiv="refresh" content="5">
 <h1>BACKOFFICE</h1>
 
 
<%=UsuariosLogeadosListener.nombre%>
<%=UsuariosLogeadosListener.lista%>
<ul class="list-group">
	  <c:forEach items="${UsuariosLogeadosListener.lista}" var="v">	
	  	<li class="list-group-item">${v}</li>
	  </c:forEach>	  	  
	</ul>

<%@include file="../includes/footer.jsp"%>