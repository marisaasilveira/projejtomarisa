<%@page import="controle.*"%>
<%@page import="modelo.*"%>
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
	String usuario = request.getParameter("tx_usuario");
	String senha = request.getParameter("tx_senha");

	Usuario u = DaoUsuario.localizarUsuarioPorLogin(usuario);
	
	if( u != null ){
		if( u.getSenha().equals( senha )){
			session.setAttribute("logado", u);
			response.sendRedirect("index.jsp");
		}else
			response.sendRedirect("login.html");
	}else
		response.sendRedirect("login.html");
%>

</body>
</html>