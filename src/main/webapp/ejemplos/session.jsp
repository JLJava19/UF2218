<%@include file="../includes/header.jsp"%>
<%@include file="../includes/navbar.jsp"%>

<h1>Java Session en aplicaciones web</h1>
<section>
	<p>
		<strong>Uno de los conceptos que más problemas produce cuando
			comenzamos a trabajar con aplicaciones web en Java es el concepto de
			java session (HttpSession)</strong> que sirve para almacenar información entre
		diferentes peticiones HTTP ya que este protocolo es stateless (sin
		estado). Así pues en muchas ocasiones nos encontraremos con el
		problema de compartir estado (datos usuario) entre un conjunto amplio
		de páginas de nuestra Aplicación.
	</p>
	<img src="resources/img/datosusuario.gif" alt="Session">
	<p>
		Para solventar este problema en la plataforma Java EE se usa de forma
		muy habitual <strong>la clase HttpSession que tiene una
			estructura de HashMap (Dicccionario)</strong> y permite almacenar cualquier
		tipo de objeto en ella de tal forma que pueda ser compartido por las
		diferentes páginas que como usuarios utilizamos.
	</p>
	<img src="resources/img/hashmap.gif" alt="Session">
</section>

<section>
	<h3>Funcionamiento</h3>
	<p>
		El funcionamiento del sistema de sessiones es relativamente sencillo.
		<strong>Cada vez que un usuario crea una session accediendo a
			una página (que la genere) se crea un objeto a nivel de Servidor con
			un HashMap vacío que nos permite almacenar la información que
			necesitamos relativa a este usuario.</strong> Realizado este primer paso se
		envía al navegador del usuario una <a
			href="https://es.wikipedia.org/wiki/Cookie_%28inform%C3%A1tica%29"
			target="_blank">Cookie</a> que sirve para identificarle y asociarle
		el HashMap que se acaba de construir para que pueda almacenar
		información en él. Este HashMap puede ser accedido desde cualquier
		otra página permitiéndonos compartir información.
	</p>
	<img src="resources/img/creacionSession.gif" alt="Funcionamiento">
</section>

<section>
	<h3>Usuarios y Sessiones</h3>

	<p>El concepto de Session es individual de cada usuario que se
		conecta a nuestra aplicación y la información no es compartida entre
		ellos. Así pues cada usuario dispondrá de su propio HashMap en donde
		almacenar la información que resulte útil entre páginas.</p>

	<img src="resources/img/sessionesusuarios.gif" alt="Usuarios y Sessiones">
</section>

<section>
	<h3>Acceder a la session del usuario</h3>

	<p>
		Desde una <strong>JSP</strong> se puede acceder a través de la
		variable <strong>session</strong> que ya esta declarada de forma
		implícita.
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
		tiempo de expiración.</span>
</section>
<%@include file="../includes/footer.jsp"%>