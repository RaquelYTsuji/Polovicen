<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.*"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Polovičen</title>
    <link rel="icon" type="imagem/png" href="../header/po.polovicen.png">
    <link rel="stylesheet" href="remover.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@600&display=swap" rel="stylesheet">
</head>
<body style=" margin:50px 50px 150px 50px">
    <img class="img_nome" src="../header/polovicen.png">
	
	<form action = "../../RemoverUsuario" method = "post" class="remover">
		<h1 class="txt_remover">Remover</h1>
        
        <% Usuario usuario = (Usuario) session.getAttribute("usuario");
           Integer id = usuario.getId();
        %>
        <input type="hidden" id="id" name="id" value="<%=id%>">
           
        <p class="texto"><b>Você tem certeza que deseja remover a sua conta permanentemente?</b></p>
        <button class="btn">Remover</button>
            
	</form>
</body>
</html>