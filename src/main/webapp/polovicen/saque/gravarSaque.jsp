<%@page import="usuario.Usuario"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page errorPage="../erro/erro.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Gravar Saque</title>
</head>
<body>
	<% 
    	String saqueString = request.getParameter("saque");
		Double saque = Double.parseDouble(saqueString);
		
		if (saque!=null) {
			Usuario usuario = (Usuario) session.getAttribute("usuario");
			usuario.setSaque(saque);
			
			if (saque >= 0) {
				Double saldo = usuario.getSaldo();
				
				Double conta = saldo - saque;
				
				if (conta >= 0){
					usuario.setSaldo(conta);
					response.sendRedirect("../home/pag2.jsp");
				} else {
					response.sendRedirect("../home/pag2.jsp");
				}
				
			} else {
				response.sendRedirect("../home/pag2.jsp");
			}
			
		} else {
			response.sendRedirect("../home/pag2.jsp");
		}
	%>
</body>
</html>