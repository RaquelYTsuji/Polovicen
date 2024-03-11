<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Polovičen</title>
    <link rel="icon" type="imagem/png" href="../header/po.polovicen.png">
    <link rel="stylesheet" href="ver.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@600&display=swap" rel="stylesheet">
</head>
<body>
	<img class="img_nome" src="../header/polovicen.png" height="130px" width="350px" style="margin-left: 20px;">

	<div class="box">
	<b class="txt_ver">Cookies</b><br><br>
	 	<p class="texto">
			<% 
			Cookie[] cookies = request.getCookies();
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
			
			for (Cookie c: request.getCookies()) {
				out.print("<b>" + c.getName() + ": " + c.getValue() + "</b><br>");
			} %>
			
		</p><br><br>
		
		<br>
		<hr>
		<br><b class="txt_ver">Sessão </b><br><br>
	    <p class="texto">
	    	<b>Último saque da sessão: </b>
	    	<% out.print("<b>R$" + session.getAttribute("saque") + "</b>"); %>
	    </p>
	    
	    <p class="texto">
	    	<b>Último depósito da sessão: </b>
	    	<% out.print("<b>R$" + session.getAttribute("deposito") + "</b>"); %>
	    </p>
	    
	    <br><br><a href="../home/pag2.jsp" class="visu" >Voltar para a página principal</a>
	 </div>
</body>
</html>