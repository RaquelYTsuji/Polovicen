<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
	<%
		String usuario = request.getParameter("usuario");
		String password = request.getParameter("password");
		
		Double saldo = 0.0;
		Double saque = 0.0;
		Double deposito = 0.0;
		
		if (usuario!=null && !usuario.isEmpty() && password!=null && !password.isEmpty()) {
			session.setAttribute("usuario", usuario);
			session.setAttribute("password", password);
			session.setAttribute("saldo", saldo);
			session.setAttribute("saque", saque);
			session.setAttribute("deposito", deposito);
		} else {
			response.sendRedirect("index.jsp");
		}
	%>
</body>
</html>