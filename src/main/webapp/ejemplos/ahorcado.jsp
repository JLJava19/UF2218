<%@include file="../includes/header.jsp"%>
<%@include file="../includes/navbar.jsp"%>

<h1>Ahorcado</h1>

<p>Bienvenido</p>
<%@include file="../includes/mensaje.jsp"%>

<style>
.ahorcado__result {
	width: 300px;
	background-color: grey;
	display: flex;
	align-content: center;
}
.letra {
	font-size: 3em;
}

.row {
	width: 100%;
}
</style>

<section class="ahorcado__result">
	<div class="form-group row">
		<div class="letra">P</div>
		<div class="letra">E</div>
		<div class="letra">P</div>
		<div class="letra">E</div>
	</div>

</section>

<section class="ahorcado__try">
	<form action="ahorcado" method="post">
		<div class="form-group row">
			<label for="inputLetra" class="col-sm-2 col-form-label">Letra</label>
			<div class="col-sm-2">
				<input type="text" class="form-control" id="inputLetra" name="inputLetra" value="${inputLetra}"
					placeholder="A">
			</div>
			<div class="col-sm-8">
				<input type="submit" class="form-control" id="inputSubmit" placeholder="Jugar">
			</div>
		</div>
	</form>
</section>



<%@include file="../includes/footer.jsp"%>