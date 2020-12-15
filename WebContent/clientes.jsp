<!DOCTYPE html>
<%@page import="controle.*"%>
<%@page import="modelo.*"%>
<%@page import="java.util.List"%>
<html lang="en">
<head>
<meta charset="">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>EngMix</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<link rel="stylesheet" href="css/style.css">
<style>
body {
	background-image: url(images/fundo.jpg);
	background-attachment: fixed;
	background-size: 100%
}
</style>
</head>

<body>
	<%
		Usuario u = new Usuario();
		if ((Usuario) session.getAttribute("logado") != null) {
			u = (Usuario) session.getAttribute("logado");
		} else {
			response.sendRedirect("login.html");
		}
		List<Cliente> listaC = new DaoCliente().listarCliente();
	%>
	<div class="d-flex align-items-center p-3 px-md-4 mb-3 border-bottom"
		style="background: rgb(243, 201, 95)">
		<img class="my-0 mr-md-auto" height="60" src="images/logo2.jpg">
		<h5 class="my-0 mr-md-auto font-weight-normal">
			EngMix - <span class="text-primary"> CONSULTORIA PROJETOS E
				SERVIÇOS</span>
		</h5>
		<nav>
			<a class="p-2 text-dark" href="index.jsp">Bem vindo(a) <%=u.getLogin()%></a>
			<a class="p-2 text-dark" href="formCliente.html">Adicionar
				Clientes</a> <a class="p-2 text-dark" href="formPessoa.html"></a>
		</nav>
		<a class="btn btn-secondary" href="sairLogin.jsp">Sair</a>
	</div>


	<div id="miolo" class="text-center" border="1" align="center"
		style="width: 100%; margin-top: 10px;">

		<table class="table table-striped table-dark">
			<thead>
				<tr>
					<th scope="col">#Cod</th>
					<th scope="col">Nome</th>
					<th scope="col">Cpf</th>
					<th scope="col">E-mail</th>
					<th scope="col">Endereço</th>
					<th scope="col">Cidade</th>
					<th scope="col">Estado</th>
					<th scope="col">Cep</th>
					<th scope="col">Excluir (X)</th>
					<th scope="col">Editar (*)</th>
				</tr>
			</thead>
			<tbody>

				<%
					for (Cliente c : listaC) {
				%>
				<tr>
					<td><%=c.getId()%></td>
					<td><%=c.getNome()%></td>
					<td><%=c.getCpf()%></td>
					<td><%=c.getEmail()%></td>
					<td><%=c.getEndereco()%></td>
					<td><%=c.getCidade()%></td>
					<td><%=c.getEstado()%></td>
					<td><%=c.getCep()%></td>
					<td><a href="deletarCliente.jsp?id=<%=c.getId()%>">X</a></td>
					<td><a href="editFormCliente.jsp?id=<%=c.getId()%>">*</a></td>
				</tr>
				<%
					}
				%>

			</tbody>


		</table>


	</div>

	<div id="rodape">
		<p class="text-center">EngMix - Consultoria Projetos e Serviços</p>
		<a href="https://www.instagram.com/engmix2019/"> <img width="64"
			src="images/instagram.png" alt=""> <a
			href="https://mail.yahoo.com/d/folders/1?.intl=br&.lang=pt-BR&.partner=none&.src=fp">
				<img width="64" src="images/email.jpg" alt=""> <a
				href="https://www.facebook.com/EngMix-104454187559873/?modal=composer&notif_id=1574166127338178&notif_t=aymt_upsell_tip">
					<img width="64" src="images/face.png" alt="">
			</a>
	</div>
</body>
</html>