<%@page import="controle.DaoCliente"%>
<%@page import="modelo.Cliente"%>
<%@ page language="java" contentType="text/html;"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>

<%
	String nome = request.getParameter("nome");
	int cpf = Integer.parseInt( request.getParameter("cpf") );
	String email = request.getParameter("email");
	String endereco = request.getParameter("endereco");
	String cidade = request.getParameter("cidade");
	String estado = request.getParameter("estado");
	int cep = Integer.parseInt( request.getParameter("cep") );
	

	Cliente c = new Cliente();
	c.setNome(nome);
	c.setCpf(cpf);
	c.setEmail(email);
	c.setEndereco(endereco);
	c.setCidade(cidade);
	c.setEstado(estado);
	c.setCep(cep);
	
	
	new DaoCliente().inserirCliente(c);	

	response.sendRedirect("clientes.jsp");
	
%>
</body>
</html>