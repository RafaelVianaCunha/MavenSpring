<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="frm"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:import url="/WEB-INF/import/menu.jsp" />
	<h3>Adicionar Contas</h3>
	<form action="adicionaConta" method="post">

		Descri��o:<br />
		<textarea name="descricao" rows="5" cols="100"></textarea>
		<frm:errors path="conta.descricao"/>
		
		<br /> Valor: <input type="text" name="valor" /><br /> Tipo: <select
			name="tipo">
			<option value="ENTRADA">Entrada</option>
			<option value="SAIDA">Saida</option>
		</select> <br />
		<br /> <input type="submit" value="Adicionar">
	</form>


</body>
</html>