<%@page import="controle.DaoCliente"%>
<%@page import="modelo.Cliente"%>
<%@page import="org.hibernate.exception.ConstraintViolationException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	// Coletou o ID do serviço
	int codCliente = Integer.parseInt( request.getParameter("id") );
	
	// Localizou o Serviço representado pelo ID
	Cliente c = DaoCliente.localizarClientePorCodigo( codCliente );
	
	// Removeu o Serviço do BD
	try{
		DaoCliente.removerCliente(c);
		
		// Voltar para a listagem
		response.sendRedirect("clientes.jsp");
	}catch(ConstraintViolationException fk){
		out.println("Serviço não pode ser removido, verifique se já está em uso!");
	}catch(Exception e){
		out.print(e.getMessage());
	}
%>

</body>
</html>