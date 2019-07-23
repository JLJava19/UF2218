<%@include file="../includes/header.jsp"%>
<%@include file="../includes/navbar.jsp"%>

<h1>Filters</h1>

<section>
	<h2>Filtros en JEE</h2>
	<p>Vamos a explicar por encima un mecanismo muy potente que se
		puede utilizar en el diseño modular de portales java, normalmente al
		desarrollar portales siguiendo un patrón MVC o utilizando algún
		Framework que lo implemente como Struts o Spring.</p>

	<p>Siempre nos surge la necesidad de desarrollar la seguridad o
		controlar los "eventos" de navegación, para este caso existen los
		Filtros, un filtro permite que determinada petición o respuesta sea
		analizada bajo ciertas condiciones.</p>

	<p>Una de las principales características de un filtro es que puede
		ser colocado en cualquier punto del flujo de la aplicación, ya sea
		entre una solicitud de JSP a JSP, Servlet a Servlet, o inclusive
		Servlet/JSP a HTML, la única condición que debe cumplirse es que debe
		existir un objeto de entrada (ServletRequest) y otro de salida
		(ServletResponse).</p>

	<p>Ahora bien, solo queda pensar para que queremos usar nuestro
		filtro, su uso normal se suele aplicar para "tracear"" el flujo de la
		aplicación con las llamadas que se van realizando, comprobar la sesión
		del usuario así como implementar la seguridad del portal.</p>

	<p>Podemos tener mas de un filtro, por lo cual se encadenan usando
		el método chain. El orden de ejecución de los filtros es según se
		declaren en el Web.xml o dependiendo del tipo que sea ( request,
		response,...)</p>
	<img src="resources/img/web-filterMapping.gif" alt="Web Filter Mapping">

	<p>podemos ver tres filtros ( F1, F2 y F3) y tres servlets (
		azul )</p>

	<h3>Creando un Filtro desde Eclipse</h3>

	<img src="resources/img/Creacion de un Filtro.png"
		alt="Web Filter Mapping"> <p>Los Filtros al igual que
		los servlets también tienen un ciclo de vida, pero es este caso es mas
		simple:</p>

	<code>public void init(FilterConfig fConfig) throws
		ServletException</code>

	<code>public void doFilter(ServletRequest request,
		ServletResponse response, FilterChain chain) throws IOException,
		ServletException</code>

	<code>public void destroy() </code>

</section>

<%@include file="../includes/footer.jsp"%>