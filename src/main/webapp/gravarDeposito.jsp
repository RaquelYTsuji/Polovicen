<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page errorPage="erro.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Gravar Deposito</title>
</head>
<body>
	<% 
    	String valor = request.getParameter("dinheiro");
		
		if (valor!=null && !valor.isEmpty()) {
			
			session.setAttribute("deposito", valor);
				
			String depositoString = (String) session.getAttribute("deposito");
			Double deposito = Double.parseDouble(depositoString);
				
			if (deposito >= 0) {
				Double saldo = (Double) session.getAttribute("dinheiro");
				
				Double dinheiro = saldo + deposito;
				session.setAttribute("dinheiro", dinheiro);
				
				response.sendRedirect("pag2.jsp");
			} else {
				response.sendRedirect("pag2.jsp");
			}
			
		} else {
			response.sendRedirect("pag2.jsp");
		}
	%>
</body>
</html>