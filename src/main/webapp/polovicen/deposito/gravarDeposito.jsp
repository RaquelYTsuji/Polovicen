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
    	String valor = request.getParameter("deposito");
		
		if (valor!=null && !valor.isEmpty()) {
			session.setAttribute("deposito", valor);
				
			String depositoString = (String) session.getAttribute("deposito");
			Double deposito = Double.parseDouble(depositoString);
				
			if (deposito >= 0) {
				Double saldo = (Double) session.getAttribute("saldo");
				
				Double conta = saldo + deposito;
				session.setAttribute("saldo", conta);
				
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