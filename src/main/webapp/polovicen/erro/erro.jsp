<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Polovičen</title>
    <link rel="icon" type="imagem/png" href="po.polovicen.png">
    <link rel="stylesheet" href="erro.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@600&display=swap" rel="stylesheet">
</head>
<body>

    <img class="img_nome" src="polovicen.png" height="130px" width="350px" style="margin-left: 20px;">

	<div class="blue">
		
		<img class="img_erro" src="po.erro.png">
		
		<h1 class="txt_erro">Erro</h1>
		
		<br><br>
	    <p class="texto"><b>A operação não pôde ser concluída</b></p>
	    
	    <br><br>
	    <p class="texto">
	    	<b>Detalhes: </b> <br>
	    	<% out.print("<b>" + exception + "</b>"); %>
	    </p>
	    
	    <br><br><br><br>
	    <a href="pag2.jsp" class="visu" >Voltar para a página principal</a>
	    
	 </div>
</body>
</html>
