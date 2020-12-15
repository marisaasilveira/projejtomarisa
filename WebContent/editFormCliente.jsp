<!DOCTYPE html>
<%@page import="modelo.Cliente"%>
<%@page import="controle.DaoCliente"%>
<html lang="br">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>EngMix</title>

<!-- Bootstrap -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<meta charset="utf-8">
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
		int idCliente = Integer.parseInt(request.getParameter("id"));

		Cliente cliente = DaoCliente.localizarClientePorCodigo(idCliente);
	%>

	<div class="d-flex align-items-center p-3 px-md-4 mb-3 border-bottom"
		style="background: rgb(243, 201, 95)">
		<img class="my-0 mr-md-auto" height="60" src="images/logo2.jpg">
		<h5 class="my-0 mr-md-auto font-weight-normal">
			EngMix - <span class="text-primary"> CONSULTORIA PROJETOS E
				SERVIÇOS</span>
		</h5>
		<nav>
			<a class="p-2 text-dark" href="index.jsp">Home</a> <a
				class="p-2 text-dark" href="clientes.jsp">Clientes</a> <a
				class="btn btn-secondary" href="sairLogin.jsp">Sair</a>
	</div>



	<div class="text-center">
		<form action="editarCliente.jsp" methode="get">
			<input name="id" value="<%=idCliente%>" type="hidden">
			<div class="form-row">
				<div class="form-group col-8">
					<label class="font-weight-bold">Nome</label> <input type="text"
						name="nome" class="form-control" placeholder="Nome Completo"
						value="<%=cliente.getNome()%>">
				</div>
				<div class="form-group col-4">
					<label class="font-weight-bold">CPF</label> <input maxlength="11"
						type="number" name="cpf" class="form-control"
						placeholder="Apenas numeros" value="<%=cliente.getCpf()%>">
				</div>
			</div>
			<div class="form-row">
				<div class="form-group col-md-6">
					<label class="font-weight-bold">Email</label> <input type="email"
						name="email" class="form-control" placeholder="username@domain"
						value="<%=cliente.getEmail()%>">
				</div>
				<div class="form-group col-6">
					<label class="font-weight-bold">Endereco</label> <input type="text"
						name="endereco" class="form-control" placeholder="Rua e bairro"
						value="<%=cliente.getEndereco()%>">
				</div>
			</div>
			<div class="form-row" align="center">
				<div class="form-group col-md-5">
					<label class="font-weight-bold">Cidade</label> <input type="text"
						name="cidade" class="form-control"
						value="<%=cliente.getCidade()%>">
				</div>
				<div class="form-group col-md-3">
					<label class="font-weight-bold">Estado</label> <select
						class="form-control" name="estado"
						value="<%=cliente.getEstado()%>">
						<option selected>Selecionar...</option>
						<option value="AL">Alagoas</option>
						<option value="BA">Bahia</option>
						<option value="PE">Pernambuco</option>
					</select>
				</div>
				<div class="form-group col-md-2">
					<label class="font-weight-bold">CEP</label> <input type="number"
						name="cep" maxlength="8" placeholder="Apenas numeros"
						class="form-control" value="<%=cliente.getCep()%>">
				</div>
			</div>

			<button type="submit" class="btn btn-primary">Alterar</button>
		</form>
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