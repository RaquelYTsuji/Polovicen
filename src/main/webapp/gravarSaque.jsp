<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page errorPage="erro.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Gravar Saque</title>
</head>
<body>
	<% 
    	String valor = request.getParameter("dinheiro");
		
		if (valor!=null && !valor.isEmpty()) {
			session.setAttribute("saque", valor);
			
			String saqueString = (String) session.getAttribute("saque");
			Double saque = Double.parseDouble(saqueString);
			
			if (saque >= 0) {
				Double saldo = (Double) session.getAttribute("dinheiro");
				
				Double dinheiro = saldo - saque;
				
				if (dinheiro >= 0){
					session.setAttribute("dinheiro", dinheiro);
					response.sendRedirect("pag2.jsp");
				} else {
					response.sendRedirect("pag2.jsp");
				}
				
			} else {
				response.sendRedirect("erro.jsp");
			}
			
		} else {
			response.sendRedirect("pag2.jsp");
		}
	%>
</body>
</html>