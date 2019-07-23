<%@include file="../includes/header.jsp"%>
<%@include file="../includes/navbar.jsp"%>

<h1>Listenners</h1>

<section>

	<h2>Escuchadores ( Listenners ) en Java</h2>

	<p>Otro concepto importante de JEE a nivel web los listeners y en
		concreto en este caso el ServletContextListener . Estos listener estan
		diseñados para escuchar los diferentes eventos que se producen en el
		ciclo de vida de la aplicacion web. Los listener mas importantes son
		los siguientes:</p>

	<p>
		<strong>ServletContextListener</strong>: Listener que se encarga de
		gestionar los eventos generales de la aplicación como son arranque y
		parada de la App Web.
	</p>
	<p>
		<strong>HttpSessionListener</strong>:Listener que se encarga de
		gestionar los propios eventos de la sessión como creación
		,invalidación y destrucción de sessiones.
	</p>
	<p>
		<strong>ServletRequestListener</strong>: Listener que se encarga de
		los eventos de creación y destruccion de peticiones del usuario.
	</p>
	<img src="resources/img/listener disponibles.png"
		alt="Listener disponibles">
</section>

<section>
	<h2>Invocación de servlest con Listener y Filtros</h2>
	<span>En el diagrama de la izquierda se puede ver que antes de
		ejecutar un servlet ( o JSP ), se ejecuta un Web Listener.</span>

	<p>En el diagrama de la derecha; si usamos filtros, estos se
		ejecutan después del listener y despues de la ejecución del Servlet
		Container ( en nuestro caso el motor de servlets de Tomcat ), luego se
		irán aplicando N filtros. El orden de los filtros coincide con el
		orden de declaración en el WEB.XML.</p>

	<img src="resources/img/ejecucion listenner y filters.png"
		alt="ejecucion listenner y filters">

</section>
<%@include file="../includes/footer.jsp"%>