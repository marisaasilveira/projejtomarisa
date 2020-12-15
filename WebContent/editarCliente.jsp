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
	int idCliente = Integer.parseInt( request.getParameter("id") );

	String nome = request.getParameter("nome");
	int cpf = Integer.parseInt(request.getParameter("cpf"));
	String email = request.getParameter("email") ;
	String endereco = request.getParameter("endereco") ;
	String cidade = request.getParameter("cidade") ;
	String estado = request.getParameter("estado");
	int cep = Integer.parseInt(request.getParameter("cep"));
	
	
	Cliente cliente = DaoCliente.localizarClientePorCodigo( idCliente );

	cliente.setNome(nome);
	cliente.setCpf(cpf);
	cliente.setEmail(email);
	cliente.setEndereco(endereco);
	cliente.setCidade(cidade);
	cliente.setEstado(estado);
	cliente.setCep(cep);
	
	
	DaoCliente.editarCliente(cliente);
	
	
	response.sendRedirect("clientes.jsp");
%>

</body>
</html>