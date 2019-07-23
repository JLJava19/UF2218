<%@include file="../includes/header.jsp"%>
<%@include file="../includes/navbar.jsp"%>

<h1>Java Session en aplicaciones web</h1>
<section>
	<p>
		<strong>Uno de los conceptos que m�s problemas produce cuando
			comenzamos a trabajar con aplicaciones web en Java es el concepto de
			java session (HttpSession)</strong> que sirve para almacenar informaci�n entre
		diferentes peticiones HTTP ya que este protocolo es stateless (sin
		estado). As� pues en muchas ocasiones nos encontraremos con el
		problema de compartir estado (datos usuario) entre un conjunto amplio
		de p�ginas de nuestra Aplicaci�n.
	</p>
	<img src="resources/img/datosusuario.gif" alt="Session">
	<p>
		Para solventar este problema en la plataforma Java EE se usa de forma
		muy habitual <strong>la clase HttpSession que tiene una
			estructura de HashMap (Dicccionario)</strong> y permite almacenar cualquier
		tipo de objeto en ella de tal forma que pueda ser compartido por las
		diferentes p�ginas que como usuarios utilizamos.
	</p>
	<img src="resources/img/hashmap.gif" alt="Session">
</section>

<section>
	<h3>Funcionamiento</h3>
	<p>
		El funcionamiento del sistema de sessiones es relativamente sencillo.
		<strong>Cada vez que un usuario crea una session accediendo a
			una p�gina (que la genere) se crea un objeto a nivel de Servidor con
			un HashMap vac�o que nos permite almacenar la informaci�n que
			necesitamos relativa a este usuario.</strong> Realizado este primer paso se
		env�a al navegador del usuario una <a
			href="https://es.wikipedia.org/wiki/Cookie_%28inform%C3%A1tica%29"
			target="_blank">Cookie</a> que sirve para identificarle y asociarle
		el HashMap que se acaba de construir para que pueda almacenar
		informaci�n en �l. Este HashMap puede ser accedido desde cualquier
		otra p�gina permiti�ndonos compartir informaci�n.
	</p>
	<img src="resources/img/creacionSession.gif" alt="Funcionamiento">
</section>

<section>
	<h3>Usuarios y Sessiones</h3>

	<p>El concepto de Session es individual de cada usuario que se
		conecta a nuestra aplicaci�n y la informaci�n no es compartida entre
		ellos. As� pues cada usuario dispondr� de su propio HashMap en donde
		almacenar la informaci�n que resulte �til entre p�ginas.</p>

	<img src="resources/img/sessionesusuarios.gif" alt="Usuarios y Sessiones">
</section>

<section>
	<h3>Acceder a la session del usuario</h3>

	<p>
		Desde una <strong>JSP</strong> se puede acceder a trav�s de la
		variable <strong>session</strong> que ya esta declarada de forma
		impl�cita.
	</p>
	<span>Desde un <strong>Servlet</strong> se puede conseguir la
		session del usuario desde la <strong>request</strong> con la siguiente
		linea:
	</span>
	<code>
		<pre>   import javax.servlet.http.HttpSession;</pre>
	</code>
	<code>
		<pre>   HttpSession session = request.getSession();</pre>
	</code>

	<span>Para marcar la caducidad de la session del usuario se
		puede usar el siguienete metodo:</span>
	<code>
		<pre>   session.setMaxInactiveInterval(60);  // 60 segundos </pre>
	</code>

	<span>*En caso de no especificar el propio servidor tiene un
		tiempo de expiraci�n.</span>
</section>
<%@include file="../includes/footer.jsp"%>