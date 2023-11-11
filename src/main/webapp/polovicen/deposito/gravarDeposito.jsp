<%@page import="model.Usuario"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="conection.*" import="model.*"%>
<%@ page errorPage="../erro/erro.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Gravar Deposito</title>
</head>
<body>
	<% 
		Integer id = Integer.parseInt(request.getParameter("id"));
		Double deposito = Double.parseDouble(request.getParameter("deposito"));
		
		if (deposito >= 0) {
			Usuario_DAO dao = new Usuario_DAO();
			Usuario usuario = dao.selecionar(id);
			usuario.setDeposito(deposito);
			
			Double saldo = usuario.getSaldo();
				
			Double conta = saldo + deposito;
			usuario.setSaldo(conta);

			String retorno = dao.alterar(id, usuario);
			
			if(retorno.equals("sucesso")) {
				session.setAttribute("usuario", usuario);
				response.sendRedirect("../home/pag2.jsp");
			} else {
				response.sendRedirect("deposito.jsp");
			}
		} else {
				response.sendRedirect("deposito.jsp");
		}
	%>
</body>
</html>