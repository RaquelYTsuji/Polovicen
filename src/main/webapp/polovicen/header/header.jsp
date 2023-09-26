<%@page import="usuario.Usuario"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Polovičen</title>
    <link rel="icon" type="imagem/png" href="../header/po.polovicen.png">
    <link rel="stylesheet" href="deposito.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@600&display=swap" rel="stylesheet">
	
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>

	<img class="img_nome" src="../header/polovicen.png" height="130px" width="350px" style="margin-left: 20px;">

    <div class="container" onclick="myFunction(this)">
        <div class="bar1"></div>
        <div class="bar2"></div>
        <div class="bar3"></div>
        <div class="menu-options">
            <ul>
             	<!--  <li class="txt_menu"><a href="conta.jsp">Conta</a></li> -->
             	<% Usuario usuario = (Usuario) session.getAttribute("usuario");
             	   String nome = usuario.getNome(); %>
             	<li class="txt_menu"><a href="#"><%out.print(nome);%></a></li>
             	<hr><br>
                <li class="txt_menu"><a href="../saque/saque.jsp">Saque</a></li>
                <li class="txt_menu"><a href="../deposito/deposito.jsp">Depósito</a></li>
                <li class="txt_menu"><a href="../login/index.jsp">Sair</a></li>
            </ul>
        </div>
    </div>
    
    <script>
        function myFunction(x) {
            x.classList.toggle("change");
        }
    </script>
</body>
</html>