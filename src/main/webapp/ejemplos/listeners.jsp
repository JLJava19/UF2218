<%@include file="../includes/header.jsp"%>
<%@include file="../includes/navbar.jsp"%>

<h1>Listenners</h1>

<section>

	<h2>Escuchadores ( Listenners ) en Java</h2>

	<p>Otro concepto importante de JEE a nivel web los listeners y en
		concreto en este caso el ServletContextListener . Estos listener estan
		dise�ados para escuchar los diferentes eventos que se producen en el
		ciclo de vida de la aplicacion web. Los listener mas importantes son
		los siguientes:</p>

	<p>
		<strong>ServletContextListener</strong>: Listener que se encarga de
		gestionar los eventos generales de la aplicaci�n como son arranque y
		parada de la App Web.
	</p>
	<p>
		<strong>HttpSessionListener</strong>:Listener que se encarga de
		gestionar los propios eventos de la sessi�n como creaci�n
		,invalidaci�n y destrucci�n de sessiones.
	</p>
	<p>
		<strong>ServletRequestListener</strong>: Listener que se encarga de
		los eventos de creaci�n y destruccion de peticiones del usuario.
	</p>
	<img src="resources/img/listener disponibles.png"
		alt="Listener disponibles">
</section>

<section>
	<h2>Invocaci�n de servlest con Listener y Filtros</h2>
	<span>En el diagrama de la izquierda se puede ver que antes de
		ejecutar un servlet ( o JSP ), se ejecuta un Web Listener.</span>

	<p>En el diagrama de la derecha; si usamos filtros, estos se
		ejecutan despu�s del listener y despues de la ejecuci�n del Servlet
		Container ( en nuestro caso el motor de servlets de Tomcat ), luego se
		ir�n aplicando N filtros. El orden de los filtros coincide con el
		orden de declaraci�n en el WEB.XML.</p>

	<img src="resources/img/ejecucion listenner y filters.png"
		alt="ejecucion listenner y filters">

</section>
<%@include file="../includes/footer.jsp"%>