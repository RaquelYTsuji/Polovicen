<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.*" import="conection.*"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Polovičen</title>
    <link rel="icon" type="imagem/png" href="../header/po.polovicen.png">
    <link rel="stylesheet" href="conta.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@600&display=swap" rel="stylesheet">
</head>
<body>

    <img class="img_nome" src="../header/polovicen.png" height="130px" width="350px" style="margin-left: 20px;">

	<div class="blue">
		<h1 class="txt_conta">Sua Conta</h1>
		
		<% Cookie[] cookies = request.getCookies();
		   String login = "";
		   String password = "";
		   Integer id = 0;
		      
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
	     %>
		
		<br><br>
	    <p class="texto">
	    	<b>Nome: </b>
	    	<% out.print("<b>" + usuario.getNome() + "</b>"); %>
	    </p>
	    
	    <br><br>
	    <p class="texto">
	    	<b>Saldo: </b>
	    	<% out.print("<b>R$" + usuario.getSaldo() + "</b>"); %>
	    </p>
	    
	    <br><br>
	    <p class="texto">
	    	<b>Último saque: </b>
	    	<% out.print("<b>R$" + usuario.getSaque() + "</b>"); %>
	    </p>
	    
	    <br><br>
	    <p class="texto">
	    	<b>Último depósito: </b>
	    	<% out.print("<b>R$" + usuario.getDeposito() + "</b>"); %>
	    </p>
	    
	    <div class="botoes">
	    	<a href="ver.jsp"><button class="btn" >Ver</button></a>
	    	<a href="alterar.jsp"><button class="btn" >Alterar</button></a>
	    	<a href="remover.jsp"><button class="btn" >Remover</button></a>
	    	<a href="../home/home.jsp"><button class="btn" >Sair</button></a>
	    </div>
	    
	    <a href="listar.jsp" class="visu" >Lista de Usuários</a>
	    <a href="../home/pag2.jsp" class="visu" >Voltar para a página principal</a>
	 </div>
</body>
</html>
