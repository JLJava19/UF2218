<%@include file="../includes/header.jsp"%>
<%@include file="../includes/navbar.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="container">
	<h1>JSP</h1>
	<section class="p-3 bg-light mb-3">
		<p>JavaServer Pages (JSP) es una tecnología que ayuda a los
			desarrolladores de software a crear páginas web dinámicas basadas en
			HTML y XML, entre otros tipos de documentos. JSP es similar a PHP,
			pero usa el lenguaje de programación Java.</p>

		<div class="alert alert-danger" role="alert">
			<p>** INCLUIR &lt;%@ taglib prefix = "c" uri =
				"http://java.sun.com/jsp/jstl/core" %&gt; !!!!!!!</p>
		</div>

		<a
			href="https://www.tutorialspoint.com/jsp/jsp_standard_tag_library.htm"><i
			class="fas fa-bible"></i> Tutorial</a>

		<h2>&lt;% Scriptlets</h2>
		<p>Los scriptlets son partes de código Java incrustadas entre los
			elementos estáticos de la página....</p>
		<p>&lt;% ... código Java ... %&gt;</p>

		<h2>&lt;%@ Directivas</h2>
		<p>Ej. &lt;%@ directiva atributo="valor" %&gt;</p>
		<p>Las directivas disponibles son:</p>
		<ul>
			<li>include: Incluye el contenido de un fichero en la página
				mediante el atributo file.
				<p>&lt;%@ include file="cabecera.html" %&gt;</p>
			</li>
		</ul>
		<h2>&lt;%= Expresiones</h2>
		<p>Las expresiones se evalúan dentro de la servlet. No deben
			acabar en ";".</p>
		<p>&lh;%= maxAlumnosClase + 1%&gt;</p>

		<h2>&lt;%! Declaraciones</h2>
		<p>Nos permiten declarar variables, funciones y datos estáticos.</p>
		<p>&lt;%! int maxAlumnosClase = 30; %&gt;</p>

	</section>

</div>

<%@include file="../includes/footer.jsp"%>