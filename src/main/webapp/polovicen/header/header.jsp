<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Header</title>
</head>
<body>

	<img class="img_nome" src="../header/polovicen.png" height="130px" width="350px" style="margin-left: 20px;">

    <div class="container" onclick="myFunction(this)">
        <div class="bar1"></div>
        <div class="bar2"></div>
        <div class="bar3"></div>
        <div class="menu-options">
            <ul>
             	<!--  <li class="txt_menu"><a href="conta.jsp">Conta</a></li> -->
             	<li class="txt_menu"><a href="#"><%=session.getAttribute("nome")%></a></li>
             	<hr><br>
                <li class="txt_menu"><a href="../saque/saque.jsp">Saque</a></li>
                <li class="txt_menu"><a href="../deposito/deposito.jsp">Depósito</a></li>
                <li class="txt_menu"><a href="../login/index.jsp">Sair</a></li>
            </ul>
        </div>
    </div>
</body>
</html>