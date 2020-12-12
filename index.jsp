<%@page import="controle.*"%>
<%@page import="modelo.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%
	Usuario u = (Usuario) session.getAttribute("logado");
	if(u == null){
		response.sendRedirect("login.html");
	}
%>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>EngMix</title>
    
    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">

    <style>
    body{
      background-image: url(images/entrar.jpg);
      background-attachment: fixed;
      background-size: 100%
  }
</style>
</head>
<body>

    <div class="d-flex align-items-center p-3 px-md-4 mb-3 border-bottom" style="background:rgb(243, 201, 95)">
        <img class="my-0 mr-md-auto" height="60" src="images/logo2.jpg">
        <h5 class="my-0 mr-md-auto font-weight-normal"> EngMix - <span class="text-primary"> CONSULTORIA PROJETOS E SERVIÃOS</span>  </h5> 
        <nav>
            <a class="p-2 text-dark" href="index.jsp">Bem vindo(a) <%= u.getLogin()%></a>
            <a class="p-2 text-dark" href="formPessoa.html">Solicite Orçamento</a>          
            <a class="p-2 text-dark" href="clientes.jsp">Clientes</a>
        </nav>
        <a class="btn btn-secondary" href="sairLogin.jsp">Sair</a>
      </div>
      <div class="row" style="background: rgb(47, 100, 116); color: white;">
          <div class="px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
              <h1 class="display-4"> ConheÃ§a um pouco da gente </h1>
              <p class="lead"> Trabalhamos com instalaÃ§Ã£o de mÃ¡quinas e equipamentos industriais</p>
              <p class="small">Nossa empresa fica localiza em Santa BrÃ­gida - Ba </p>
            </div>
      </div>
      <div class="p-4"></div>
      <div class="row text-center">
          <div class="col-sm"></div>
            <div class="col-sm text-danger">
              <img height="200" class="rounded-circle" src="images/naObra.jpg" alt="">
              <a class="card-title" href="https://www.youtube.com/watch?v=X7tYbkea6IQ"><h2>Sistema de <br> bobeamento solar</h2></a>
          
             
            </div>
            <div class="col-sm text-success">
              <img height="200" style="border-radius: 150px;" src="images/casa.jpg" alt="">
              <a class="card-title" href="https://www.youtube.com/watch?v=bzeE6BssNqI"><h2>Sistema <br> ON-GRID</h2></a>
              
            </div>
            <div class="col-sm text-primary">
              <img height="200" style="border-radius: 150px;" src="images/naObra2.jpg" alt="">
              <a class="card-title" href="https://www.youtube.com/watch?v=lyN3iPDVBYM"><h2>Sistema <br> OFF-GRID</h2></a>
            
            </div>
          <div class="col-sm"></div>
      </div>
      
      <div >
      <blockquote class="blockquote text-center" >
        <h1>Quem Somos</h1>
        <p class="mb-0">A ENGMIX CONSULTORIA PROJETOS E SERVIÃOS LTDA, Ã UMA EMPRESA DE ENGENHARIA E PRESTAÃÃO DE SERVIÃOS,
           FOCADA EM ATENDER AS NECESSIDADES DE NOSSOS CLIENTES E PARCEIROS, DISPOMOS DE UMA AMPLA REDE DE PROFISSIONAIS E
            DESENVOLVER SOLUÃÃES COM BAIXO CUSTO E MANTENDO ALTO NÃVEL DE QUALIDADE, RESPEITANDO 
          AS NORMAS E PROCEDIMENTOS DE SEGURANÃA E MEIO AMBIENTE, BUSCANDO SEMPRE SUPERAR AS EXPECTATIVAS DOS NOSSOS CLIENTES.</p>
      </blockquote>
      <blockquote class="blockquote text-right">
        <h3>Nossa MissÃ£o</h3> 
          <p class="mb-0">Buscar atravÃ©s da engenharia oportunidades para <br>
                          solucionar problemas  que nos afeta no dia a dia, <br>
                         proporcionando  a sociedade mais qualidade de vida, <br>
                         e aos nossos clientes mais tranquilidade, seguranÃ§a e eficiÃªncia.</p>
        </blockquote>
        <blockquote class="blockquote">
          <h3>VisÃ£o</h3>
            <p class="mb-0">Ser reconhecida como empresa de excelÃªncia nas areas atuantes de consultorias,<br>
               treinamentos, projetos e ServiÃ§os, porque a satisfaÃ§Ã£o total <br>
               de nossos clientes Ã© o nosso principal objetivos.</p>
          </blockquote>
          <blockquote class="blockquote text-center">
            <h3>Valores</h3>
            <ul>
              <li>Ãtica</li>
              <li>TransparÃªncia</li>
              <li>Sinergia</li>
              <li>ValorizaÃ§Ã£o das pessoas</li>
              <li>Responsabilidades socioambiental</li>
              <li>Compromentimento</li>
            </ul>
             
            </blockquote>
          </div>
    
    <div id="rodape">
        <p class="text-dark">Nossas Redes Sociais </p>
              <a href="https://www.instagram.com/engmix2019/">
            <img width="64" src="images/instagram.png" alt="">
            <a href="https://mail.yahoo.com/d/folders/1?.intl=br&.lang=pt-BR&.partner=none&.src=fp">
                <img width="64" src="images/email.jpg" alt="">
                <a href="https://www.facebook.com/EngMix-104454187559873/?modal=composer&notif_id=1574166127338178&notif_t=aymt_upsell_tip">
                    <img width="64" src="images/face.png" alt="">
        </a>

    </div>
 
</body>
</html>