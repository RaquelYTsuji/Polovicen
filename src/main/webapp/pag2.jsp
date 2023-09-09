<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Polovičen</title>
    <link rel="icon" type="imagem/png" href="po.polovicen.png">
    <link rel="stylesheet" href="pag2.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@600&display=swap" rel="stylesheet">
</head>
<body>

    <img class="img_nome" src="polovicen.png" height="130px" width="350px" style="margin-left: 20px;">

    <div class="container" onclick="myFunction(this)">
        <div class="bar1"></div>
        <div class="bar2"></div>
        <div class="bar3"></div>
        <div class="menu-options">
            <ul>
                <li class="txt_menu"><a href="saque.html">Saque</a></li>
                <li class="txt_menu"><a href="deposito.html">Depósito</a></li>
                <li class="txt_menu"><a href="index.html">Sair</a></li>
            </ul>
        </div>
    </div>
    

    <p class="saldo"><b>Saldo Atual:</b></p>
    <input class="value" id="dinheiro" name="dinheiro" type="text" placeholder="R$: 000,00">


    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.16/jquery.mask.min.js"></script>


    

    <div class="blue">
        <div class="saque">
            <img src="saque.png" height="350px" width="150px" style="padding-top: 200px;">
            <a href="saque.html"><button class="btn" style="margin-bottom: 150px;" >Realizar saque</button></a>
        </div>
        <div class="deposito">
            <img class="deposito img" src="po.deposito.png" height="530px" width="170px" style="padding-top: 350px;">
            <a href="deposito.html"><button class="btn" style="margin-bottom: 350px;" >Realizar depósito</button></a>
        </div>
    </div>
    

    

    <script>
        function myFunction(x) {
            x.classList.toggle("change");
        }

        $(document).ready(function () {
            $('#dinheiro').mask('R$: #.##0,00', { reverse: true });
        });
    </script>
</body>
</html>
