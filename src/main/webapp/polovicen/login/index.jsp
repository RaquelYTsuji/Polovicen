<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Polovičen</title>
    <link rel="icon" type="imagem/png" href="../header/po.polovicen.png">
    <link rel="stylesheet" href="index.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@600&display=swap" rel="stylesheet">
</head>
<body style=" margin:50px 50px 150px 50px">
    <img class="img_nome" src="../header/polovicen.png">

    <div class="div">

        <form action = "../../Login" method = "post" class="div login">
            <h1 class="txt_login">Login</h1>
            <br>
            <br>
            
            <label for="nome" class="txt_cad" >Nome:</label>
            <input type="text" id="nome" name="nome" style="background-color: #00003C; color: white;">
           
            <label for="senha" class="txt_cad">Senha:</label>
            <input type="password" id="senha" name="senha" style="background-color: #00003C; color: white;">

           
            <br><br>
            <a href="../home/pag2.jsp"><button class="btn">Entrar</button></a>
            
        </form>
        <div class="div frase">

            <div class="p_cima">
                <img class="img_login" src="po.login.png">
            </div>
            <div class="p_baixo">
                <h3 class="txt_bank" > O seu banco de confiança a alguns cliques de você<span style="color: #CE9F41" >.</span></h3>
                 
            </div>
        </div>
    </div>
</body>
</html>