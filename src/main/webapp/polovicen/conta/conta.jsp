<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.*"%>
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
		
		<% Usuario usuario = (Usuario) session.getAttribute("usuario");
	
	   String nome = usuario.getNome();
	   Double saldo = usuario.getSaldo(); 
	   Double saque = usuario.getSaque();
	   Double deposito = usuario.getDeposito();%>
	   
		<br><br>
	    <p class="texto">
	    	<b>Nome: </b>
	    	<% out.print("<b>" + nome + "</b>"); %>
	    </p>
	    
	    <br><br>
	    <p class="texto">
	    	<b>Saldo: </b>
	    	<% out.print("<b>R$" + saldo + "</b>"); %>
	    </p>
	    
	    <br><br>
	    <p class="texto">
	    	<b>Último saque: </b>
	    	<% out.print("<b>R$" + saque + "</b>"); %>
	    </p>
	    
	    <br><br>
	    <p class="texto">
	    	<b>Último depósito: </b>
	    	<% out.print("<b>R$" + deposito + "</b>"); %>
	    </p>
	    
	    <div class="botoes">
	    	<a href="alterar.jsp"><button class="btn" >Alterar</button></a>
	    	<a href="remover.jsp"><button class="btn" >Remover</button></a>
	    	<a href="../home/home.jsp"><button class="btn" >Sair</button></a>
	    </div>
	    
	    <a href="../home/pag2.jsp" class="visu" >Voltar para a página principal</a>
	    
	 </div>
</body>
</html>
