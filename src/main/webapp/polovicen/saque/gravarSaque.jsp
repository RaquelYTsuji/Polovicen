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
    	String valor = request.getParameter("saque");
		
		if (valor!=null && !valor.isEmpty()) {
			session.setAttribute("saque", valor);
			
			String saqueString = (String) session.getAttribute("saque");
			Double saque = Double.parseDouble(saqueString);
			
			if (saque >= 0) {
				Double saldo = (Double) session.getAttribute("saldo");
				
				Double conta = saldo - saque;
				
				if (conta >= 0){
					session.setAttribute("saldo", conta);
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