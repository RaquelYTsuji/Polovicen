<%@page import="model.Usuario"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="conection.*" import="model.*"%>
<%@ page errorPage="../erro/erro.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Gravar Saque</title>
</head>
<body>
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
	   
	    Usuario_DAO dao = new Usuario_DAO();
	    Usuario usuario = dao.selecionarNomeSenha(login, password);
		
	    if (usuario.getNome() != null && usuario.getSenha() != null) {
		    id = usuario.getId();
	    }
	   
		Double saque = Double.parseDouble(request.getParameter("saque"));
	
		if (saque >= 0) {
			usuario.setSaque(saque);
			
			Double saldo = usuario.getSaldo();
				
			Double conta = saldo - saque;
				
			if (conta >= 0){
				usuario.setSaldo(conta);
				
				String retorno = dao.alterar(id, usuario);
				
				if(retorno.equals("sucesso")) {
					session.setAttribute("saque", saque);
					response.sendRedirect("../home/pag2.jsp");
				} else {
					response.sendRedirect("saque.jsp");
				}
			} else {
				response.sendRedirect("saque.jsp");
			}
		}
	%>
</body>
</html>