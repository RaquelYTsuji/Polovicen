<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Polovičen</title>
    <link rel="icon" type="imagem/png" href="po.polovicen.png">
    <link rel="stylesheet" href="saque.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@600&display=swap" rel="stylesheet">
</head>
<body style="margin-bottom: 150px;">

    <img class="img_nome" src="polovicen.png" height="130px" width="350px" style="margin-left: 20px;">

 
    <div class="container" onclick="myFunction(this)">
        <div class="bar1"></div>
        <div class="bar2"></div>
        <div class="bar3"></div>
        <div class="menu-options">
            <ul>
                <li class="txt_menu"><a href="saque.jsp">Saque</a></li>
                <li class="txt_menu"><a href="pag2.jsp">Saldo</a></li>
                <li class="txt_menu"><a href="index.jsp">Sair</a></li>
            </ul>
        </div>
    </div>


    <p class="saldo"><b>Depósito:</b></p>
    <form action="gravarDeposito.jsp" method="post" class="blue">

       <label for="value" class="txt_cad" >Digite o valor que deseja depositar:</label>
       <input class="value" id="deposito" name="deposito" type="text" placeholder="R$: 000,00" style="font-size: 70px;">
   
       <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
       <br><br><br><br>

        <button class="btn" onclick="saque()">Realizar depósito</button>

        <a href="pag2.jsp" class="visu" >Visualizar o saldo atual</a>

    </form>
    

    <script>
        function myFunction(x) {
            x.classList.toggle("change");
        }

        $(document).ready(function () {
            $('#dinheiro').mask('R$: ##.##0,00', { reverse: true });
        });

        function saque(){
            var dep = document.getElementById('dinheiro').value;
            alert('Você realizou um saque no valor de: ' + dep );
        }
    </script>
</body>
</html>
