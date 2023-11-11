<%@page import="java.util.Set"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.*"%>
<%@ page errorPage="erro.jsp" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Polovičen</title>
    <link rel="icon" type="imagem/png" href="../header/po.polovicen.png">
    <link rel="stylesheet" href="saque.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@600&display=swap" rel="stylesheet">
	
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body style="margin-bottom: 150px;">

    <div id="header"></div>
    

    <p class="saldo"><b>Saque:</b></p>
    <form action="gravarSaque.jsp" method="post" class="blue">

       <label for="value" class="txt_cad" >Digite o valor que deseja sacar:</label>
       <input class="value" id="saque" name="saque" type="text" placeholder="R$: 000,00" style="font-size: 70px">
       <br><br><br><br>

		<% Usuario usuario = (Usuario) session.getAttribute("usuario");
           Integer id = usuario.getId();
        %>
        <input type="hidden" id="id" name="id" value="<%=id%>">
        
        <button class="btn" onclick="saque()">Realizar saque</button>

        <a href="../home/pag2.jsp" class="visu" >Visualizar o saldo atual</a>

    </form>

    <script>
        $(document).ready(function () {
            $('#saque').mask('R$: ##.##0,00', { reverse: true });
        });

        function saque(){
            var saque = document.getElementById('saque').value;
            alert('Você realizou um saque no valor de: ' + saque );
        }
        
        $(function(){
    		  $("#header").load("../header/header.jsp"); 
    	});
    </script>
</body>
</html>
