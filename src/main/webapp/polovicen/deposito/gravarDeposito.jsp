<%@page import="usuario.Usuario"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page errorPage="../erro/erro.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Gravar Deposito</title>
</head>
<body>
	<% 
    	String depositoString = request.getParameter("deposito");
		Double deposito = Double.parseDouble(depositoString);
		
		if (deposito!=null) {
			Usuario usuario = (Usuario) session.getAttribute("usuario");
			usuario.setDeposito(deposito);
			
			if (deposito >= 0) {
				Double saldo = usuario.getSaldo();
				
				Double conta = saldo + deposito;
				usuario.setSaldo(conta);
				
				response.sendRedirect("../home/pag2.jsp");
			} else {
				response.sendRedirect("../home/pag2.jsp");
			}
			
		} else {
			response.sendRedirect("../home/pag2.jsp");
		}
	%>
</body>
</html>