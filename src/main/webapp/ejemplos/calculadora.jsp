<%@page import="com.ipartek.formacion.controller.CalculadoraController"%>
<%@include file="../includes/header.jsp"%>
<%@include file="../includes/navbar.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<h1>Calculadora</h1>

<%@include file="../includes/mensaje.jsp"%>

<form action="calculadora" method="post">
  <div class="form-group row">
    <label for="inputNumero1" class="col-sm-2 col-form-label">Número 1</label>
    <div class="col-sm-10">
      <input type="number" class="form-control" id="inputNumero1" step="0.01" name="inputNumero1" value="${inputNumero1}" placeholder="Número 1">
    </div>
  </div>
  <div class="form-group row">
    <label for="inputNumero2" class="col-sm-2 col-form-label">Número 2</label>
    <div class="col-sm-10">
      <input type="number" class="form-control" id="inputNumero2" step="0.01" name="inputNumero2" value="${inputNumero2}"  placeholder="Número 2">
    </div>
  </div>
  <div class="form-group row">
    <label for="inputOperacion" class="col-sm-2 col-form-label">Operación </label>
    <div class="col-sm-10">
      <select id="inputOperacion" name="inputOperacion" class="form-control">
        <option value="<%=CalculadoraController.OP_SUMAR%>" ${(op==CalculadoraController.OP_SUMAR)?'selected':''}>Sumar</option>
        <option value="<%=CalculadoraController.OP_RESTAR%>" ${(op==CalculadoraController.OP_RESTAR)?'selected':''}>Restar</option>
        <option value="<%=CalculadoraController.OP_MULTIPLICAR%>" ${(op==CalculadoraController.OP_MULTIPLICAR)?'selected':''}>Multiplicar</option>
        <option value="<%=CalculadoraController.OP_DIVIDIR%>" ${(op==CalculadoraController.OP_DIVIDIR)?'selected':''}>Dividir</option>
      </select>
    </div>
  </div>
  
 
  <c:if test="${resultado!=null}">
	  <div class="form-group row">
	    <div class="col-sm-12">
	    	<span>
	    		<fmt:setLocale value="${user.locale}" />
 				<fmt:formatNumber pattern="#,##0.00" value="${resultado}"/>
	    	</span>
	    </div>
	  </div>
  </c:if>
  <div class="form-group row">
    <div class="col-sm-12">
      <input type="submit" class="form-control" id="inputSubmit" placeholder="Calcular">
    </div>
  </div>
</form>


<%@include file="../includes/footer.jsp"%>