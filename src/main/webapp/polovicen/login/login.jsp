<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="conection.*" import="model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
	<%
		String nome = request.getParameter("nome");
		String senha = request.getParameter("senha");
		
		Usuario_DAO dao = new Usuario_DAO();
		Usuario usuario = dao.selecionarNomeSenha(nome, senha);
		
		if (usuario.getNome() != null && usuario.getSenha() != null) {
			session.setAttribute("usuario", usuario);
			response.sendRedirect("../home/pag2.jsp");
		} else {
			response.sendRedirect("index.jsp");
		}
	%>
</body>
</html>