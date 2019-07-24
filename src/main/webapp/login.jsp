<%@include file="includes/header.jsp"%>
<%@include file="includes/navbar.jsp"%>


<h1>Login</h1>

<%@include file="includes/mensaje.jsp"%>

<form action="login" method="post">
	<div class="form-group">
		<label for="usuario">usuario</label> <input
			type="text" class="form-control" id="usuario" name="usuario"
			 placeholder="Usuario">
	</div>
	<div class="form-group">
		<label for="Password">Password</label> <input
			type="password" class="form-control"id="pass" name="pass"
			placeholder="Password">
	</div>

	<button type="submit" class="btn btn-primary">Entrar</button>
</form>

<%@include file="includes/footer.jsp"%>