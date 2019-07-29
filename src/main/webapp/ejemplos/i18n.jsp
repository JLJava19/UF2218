<%@include file="../includes/header.jsp"%>
<%@include file="../includes/navbar.jsp"%>

<h1>i18n - internalización</h1>

${mensajeIdioma}


<div class="container-flags">
	<div>
		<a href="i18n?idiomaSeleccionado=es_ES"><img class="img-flag"
			src="resources/img/Spain.png" alt="España"></a>
	</div>
	<div>
		<a href="i18n?idiomaSeleccionado=en_EN"><img class="img-flag"
			src="resources/img/England.png" alt="Ingles"></a>
	</div>
	<div>
		<a href="i18n?idiomaSeleccionado=eu_ES"><img class="img-flag"
			src="resources/img/Basque.png" alt="Euskera"></a>
	</div>
</div>
<h2>Recuperar properties desde Servlets</h2>

<h2>Recuperar properties desde JSP</h2>

<%
	// @see includes/header.jsp

%>

<p class="h3 text-danger"><fmt:message key="menu.ejemplos" /></p>
<p class="h3 text-danger"><fmt:message key="menu.inicio" /></p>






<p>i18n es la abreviatura de internationalization porque entre la
	"i" y la "n" tenemos 18 letras.</p>

<p>Internacionalization es un tema que tiene que estar presente en
	la cabeza de todos los desarrolladores de esta era tan globalizada. Es
	poder hacer una aplicación soporte diferentes lenguages con el minimo
	impacto en el código.Por suerte Java nos da una API para poder
	manejarlo en los servlet y en las vistas con JSP.</p>

<p>Para poder realizar todo esto nos basaremos en ficheros
	.properties cada uno de ellos contendran los mensajes para el idioma
	necesario:</p>

<img src="resources/img/i18n configuracion eclipse.png">

<p>En este caso tenemos 3 ficheros de .properties, los cuales todos
	se llaman igual salvo por el final i18nmessages_xx_XX.properties ,
	donde las xx son el idioma y XX el pais:</p>




<%@include file="../includes/footer.jsp"%>