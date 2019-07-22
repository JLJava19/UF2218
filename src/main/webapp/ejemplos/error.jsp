
<%@include file="../includes/header.jsp" %>
<%@include file="../includes/navbar.jsp" %>

<h1>Ejemplo Servlet Basico son JSP</h1>
<p>Vamos a crear un servlet para mostrar REQUEST y RESPONSE</p>
<p>El servlet será el encargado de pintar la respuesta a pelo, sin usas JSP.</p>
<a class="btn btn-primary btn-block mb-2" href="controlador1">PETICIÓN GET</a>
<a class="btn btn-primary btn-block mb-2" href="controlador1?param1=value&param2=vfoo&p3=manolito">PETICIÓN GET CON PARAMETROS</a>
<a class="btn btn-danger btn-block mb-2" href="ControladorNoExistente">PETICIÓN GET - Response 404</a>

<%@include file="../includes/footer.jsp" %>