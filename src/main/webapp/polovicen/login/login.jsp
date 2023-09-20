<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="usuario.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
	<%
		String nome = request.getParameter("nm");
		String password = request.getParameter("password");
		
		Usuario usuario = new Usuario(nome, password, 0.0, 0.0, 0.0);
		
		if (usuario!=null) {
			session.setAttribute("usuario", usuario);
			
			response.sendRedirect("../home/pag2.jsp");
		} else {
			response.sendRedirect("index.jsp");
		}
	%>
</body>
</html>