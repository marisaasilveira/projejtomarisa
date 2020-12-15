<%@page import="controle.*"%>
<%@page import="modelo.*"%>
<%@ page language="java" contentType="text/html;"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>

<%
	String usuario = request.getParameter("tx_usuario");
	String senha = request.getParameter("tx_senha");
	

	Usuario u = new Usuario(usuario, senha);
	
	new DaoUsuario().inserirUsuario(u);

	response.sendRedirect("login.html");
	
%>
</body>
</html>