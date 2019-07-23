<%@include file="../includes/header.jsp"%>
<%@include file="../includes/navbar.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="container">
	<h1>JSTL</h1>


	<section class="p-3 bg-light mb-3">
		<h2>&lt;c:forEach&gt;</h2>
		<p>
			Sirve pare iterar sibre una coleccion sin tener que usar
			<code>&lt;% ... %&gt; </code>
			scriptlets
		</p>
		<p>
			Usando con el
			<code>
				&dollar;{colores}
				<code> =>${colores}
		</p>

		<ol>
			<c:forEach items="${colores}" var="color">
				<li>${color}</li>
			</c:forEach>
		</ol>
	</section>

	<section class="p-3 bg-light mb-3">
		<h2>&lt;c:if&gt;</h2>
		<c:if test="${isLunes}">
			<p>Hoy es lunes</p>
		</c:if>
		<c:if test="${!isLunes}">
			<p>Hoy NO es lunes</p>
		</c:if>
	</section>

	<section class="p-3 bg-light mb-3">
		<h2>&lt;c:choose&gt;</h2>
		<c:set var="salary" scope="session" value="${-200*2}" />
		<p>
			Your salary is :
			<c:out value="${salary}" />
		</p>
		<c:choose>

			<c:when test="${salary <= 0}">
            Salary is very low to survive.
         </c:when>

			<c:when test="${salary > 1000}">
            Salary is very good.
         </c:when>

			<c:otherwise>
            No comment sir...
         </c:otherwise>
		</c:choose>
	</section>

	<section class="p-3 bg-light mb-3">
		<h2>&lt;c:out&gt;</h2>
		<p>The &lt;c:out&gt; tag displays the result of an expression.
			This is almost similar to the way &lt;%= %&gt; works. The difference
			here is that &lt;c:out&gt; tag lets you use the simpler "." notation
			to access properties. For example, to access customer.address.street,
			use the tag &lt;c:out value = "customer.address.street"/&gt;. The
			&lt;c:out&gt; tag can automatically escape XML tags so they aren't
			evaluated as actual tags.</p>
		
			<p>&lt;c:out value = "${'<tag> , &'}"/&gt;</p>
			<c:out value = "${'<tag> , &'}"/>
	</section>
</div>

<%@include file="../includes/footer.jsp"%>