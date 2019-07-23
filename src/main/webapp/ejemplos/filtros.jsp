<%@include file="../includes/header.jsp"%>
<%@include file="../includes/navbar.jsp"%>

<h1>Filters</h1>

<section>
	<h2>Filtros en JEE</h2>
	<p>Vamos a explicar por encima un mecanismo muy potente que se
		puede utilizar en el dise�o modular de portales java, normalmente al
		desarrollar portales siguiendo un patr�n MVC o utilizando alg�n
		Framework que lo implemente como Struts o Spring.</p>

	<p>Siempre nos surge la necesidad de desarrollar la seguridad o
		controlar los "eventos" de navegaci�n, para este caso existen los
		Filtros, un filtro permite que determinada petici�n o respuesta sea
		analizada bajo ciertas condiciones.</p>

	<p>Una de las principales caracter�sticas de un filtro es que puede
		ser colocado en cualquier punto del flujo de la aplicaci�n, ya sea
		entre una solicitud de JSP a JSP, Servlet a Servlet, o inclusive
		Servlet/JSP a HTML, la �nica condici�n que debe cumplirse es que debe
		existir un objeto de entrada (ServletRequest) y otro de salida
		(ServletResponse).</p>

	<p>Ahora bien, solo queda pensar para que queremos usar nuestro
		filtro, su uso normal se suele aplicar para "tracear"" el flujo de la
		aplicaci�n con las llamadas que se van realizando, comprobar la sesi�n
		del usuario as� como implementar la seguridad del portal.</p>

	<p>Podemos tener mas de un filtro, por lo cual se encadenan usando
		el m�todo chain. El orden de ejecuci�n de los filtros es seg�n se
		declaren en el Web.xml o dependiendo del tipo que sea ( request,
		response,...)</p>
	<img src="resources/img/web-filterMapping.gif" alt="Web Filter Mapping">

	<p>podemos ver tres filtros ( F1, F2 y F3) y tres servlets (
		azul )</p>

	<h3>Creando un Filtro desde Eclipse</h3>

	<img src="resources/img/Creacion de un Filtro.png"
		alt="Web Filter Mapping"> <p>Los Filtros al igual que
		los servlets tambi�n tienen un ciclo de vida, pero es este caso es mas
		simple:</p>

	<code>public void init(FilterConfig fConfig) throws
		ServletException</code>

	<code>public void doFilter(ServletRequest request,
		ServletResponse response, FilterChain chain) throws IOException,
		ServletException</code>

	<code>public void destroy() </code>

</section>

<%@include file="../includes/footer.jsp"%>