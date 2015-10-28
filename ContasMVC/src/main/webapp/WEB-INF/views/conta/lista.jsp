<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript">
	function deuCerto(dadosDaResposta) {
		alert("Conta paga com sucesso!")		
	}
	function pagaAgora(id) {
		$.get("pagaConta?id="+ id, deuCerto);
	}


</script>




<title>Insert title here</title>
</head>
<body>

	<c:import url="/WEB-INF/import/menu.jsp" />
	<table>
		<tr>
			<th>C�digo</th>
			<th>Descri��o</th>
			<th>Valor</th>
			<th>Tipo</th>
			<th>Paga?</th>
			<th>Data de Pagamento</th>
			<th>A��es</th>
		</tr>

		<c:forEach items="${contas}" var="conta">
			<tr>
				<td>${conta.id}</td>
				<td>${conta.descricao}</td>
				<td>${conta.valor}</td>
				<td>${conta.tipo}</td>
				<td>
					<c:if test="${conta.paga eq false}">
					N�o
					</c:if>
					<c:if test="${conta.paga eq true}">
					Sim
					</c:if>				
				</td>
				<td><fmt:formatDate value="${conta.dataPagamento.time}" pattern="dd/MM/yyyy"/></td>
				<td>
					<a href="removeConta?id=${conta.id}">Deletar</a>  
					
					<c:if test="${conta.paga eq false}">
						| <a href="#" onclick="pagaAgora(${conta.id});">Pagar</a>
					</c:if>
				</td>
			</tr>
		</c:forEach>


	</table>

</body>
</html>