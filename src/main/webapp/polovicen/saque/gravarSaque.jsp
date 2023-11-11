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
		Integer id = Integer.parseInt(request.getParameter("id"));
		Double saque = Double.parseDouble(request.getParameter("saque"));
	
		if (saque >= 0) {
			Usuario_DAO dao = new Usuario_DAO();
			Usuario usuario = dao.selecionar(id);
			usuario.setSaque(saque);
			
			Double saldo = usuario.getSaldo();
				
			Double conta = saldo - saque;
				
			if (conta >= 0){
				usuario.setSaldo(conta);
				
				String retorno = dao.alterar(id, usuario);
				
				if(retorno.equals("sucesso")) {
					session.setAttribute("usuario", usuario);
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