<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="conection.Usuario_DAO"%>
<%@ page import="java.util.List"%>
<%@ page import="model.Usuario"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Polovičen</title>
    <link rel="icon" type="imagem/png" href="../header/po.polovicen.png">
    <link rel="stylesheet" href="listar.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@600&display=swap" rel="stylesheet">
</head>
<body>
    <img class="img_nome" src="../header/polovicen.png">
	
	<div class="lista">
		<%
		Usuario_DAO dao = new Usuario_DAO();
		List<Usuario> usuarios = dao.listar();
		%>
		
		<h1 class="txt_listar">Lista de Usuários</h1>
	
		<table class="table">
			<th><b>Id</b></th>
			<th><b>Nome</b></th>
			<th><b>Senha</b></th>
			<th><b>Saldo</b></th>
			<th><b>Saque</b></th>
			<th><b>Deposito</b></th>
				<%for(int i = 0; i<usuarios.size();i++){
					Usuario usuario = usuarios.get(i);
				%>
			<tr>
				<td><%=usuario.getId() %></td>
				<td><%=usuario.getNome() %></td>
				<td><%=usuario.getSenha() %></td>
				<td><%=usuario.getSaldo() %></td>
				<td><%=usuario.getSaque() %></td>
				<td><%=usuario.getDeposito() %></td>
			</tr>
				<%} %>
		</table>
            
        <br>
        <a href="../home/pag2.jsp" class="visu" >Voltar para a página principal</a>
	</div>
</body>
</html>