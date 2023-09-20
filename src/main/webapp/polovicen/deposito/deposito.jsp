<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Polovičen</title>
    <link rel="icon" type="imagem/png" href="po.polovicen.png">
    <link rel="stylesheet" href="deposito.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@600&display=swap" rel="stylesheet">
	
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body style="margin-bottom: 150px;">

    <div id="header"></div>


    <p class="saldo"><b>Depósito:</b></p>
    <form action="gravarDeposito.jsp" method="post" class="blue">

       <label for="value" class="txt_cad" >Digite o valor que deseja depositar:</label>
       <input class="value" id="deposito" name="deposito" type="text" placeholder="R$: 000,00" style="font-size: 70px;">
       <br><br><br><br>
       
        <button class="btn" onclick="deposito()">Realizar depósito</button>

        <a href="../home/pag2.jsp" class="visu" >Visualizar o saldo atual</a>

    </form>
    

    <script>
        function myFunction(x) {
            x.classList.toggle("change");
        }

        $(document).ready(function () {
            $('#deposito').mask('R$: ##.##0,00', { reverse: true });
        });

        function deposito(){
            var dep = document.getElementById('deposito').value;
            alert('Você realizou um deposito no valor de: ' + dep );
        }
        
        $(function(){
    		$("#header").load("../header/header.jsp"); 
    	});
    </script>
</body>
</html>
