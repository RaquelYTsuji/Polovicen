<%@page import="model.Usuario" import="conection.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Polovičen</title>
    <link rel="icon" type="imagem/png" href="../header/po.polovicen.png">
    <link rel="stylesheet" href="pag2.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@600&display=swap" rel="stylesheet">

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
	
	<div id="header"></div>
	
	<% Cookie[] cookies = request.getCookies();
	   String login = "";
	   String password = "";
	   Double saldo = 0.0;
	      
	   for (Cookie cookie : cookies) {
           if (cookie.getName().equals("login")) {
               login = cookie.getValue();
           }
       }
	   
	   for (Cookie cookie : cookies) {
           if (cookie.getName().equals("password")) {
        	   password = cookie.getValue();
           }
       }
	   
	   Usuario_DAO dao = new Usuario_DAO();
	   Usuario usuario = dao.selecionarNomeSenha(login, password);
		
	   if (usuario.getNome() != null && usuario.getSenha() != null) {
		   saldo = usuario.getSaldo();
	   }
	   
	   %>
	   
	<p class="saudacao"><b>Olá, <%out.print(login);%></b></p>
	
    <p class="saldo"><b>Saldo Atual:</b></p>
    <input class="value" id="saldo" name="saldo" type="text" value ="R$: <%out.print(saldo);%>"/>



    <div class="blue">
        <div class="saque">
            <img src="po.saque.png" height="350px" width="150px" style="padding-top: 200px;">
            <a href="../saque/saque.jsp"><button class="btn" style="margin-bottom: 150px;" >Realizar saque</button></a>
        </div>
        <div class="deposito">
            <img class="deposito img" src="po.deposito.png" height="530px" width="170px" style="padding-top: 350px;">
            <a href="../deposito/deposito.jsp"><button class="btn" style="margin-bottom: 350px;" >Realizar depósito</button></a>
        </div>
    </div>



    <script>
        $(document).ready(function () {
            $('#dinheiro').mask('R$: #.##0,00', { reverse: true });
        });
        $(function(){
  			$("#header").load("../header/header.jsp"); 
  		});
    </script>
</body>
</html>