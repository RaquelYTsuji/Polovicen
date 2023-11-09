<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.*"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Polovičen</title>
    <link rel="icon" type="imagem/png" href="../header/po.polovicen.png">
    <link rel="stylesheet" href="alterar.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@600&display=swap" rel="stylesheet">
</head>
<body style=" margin:50px 50px 150px 50px">
    <img class="img_nome" src="../header/polovicen.png">
	
	<form action = "../../AlterarUsuario" method = "post" class="alterar">
		<h1 class="txt_alterar">Alterar</h1>
        <br>
            
        <label for="nome" class="txt_cad" >Nome:</label>
        <input type="text" id="nome" name="nome" style="background-color: #00003C; color: white;">
           
        <label for="senha" class="txt_cad">Senha:</label>
        <input type="password" id="senha" name="senha" style="background-color: #00003C; color: white;">
            
        <label for="saldo" class="txt_cad">Saldo:</label>
        <input type="text" id="saldo" name="saldo" style="background-color: #00003C; color: white;">
        
        <label for="saque" class="txt_cad">Saque:</label>
        <input type="text" id="saque" name="saque" style="background-color: #00003C; color: white;">
        
        <label for="deposito" class="txt_cad">Deposito:</label>
        <input type="text" id="deposito" name="deposito" style="background-color: #00003C; color: white;">
           
        <button class="btn">Alterar</button>
            
	</form>
</body>
</html>