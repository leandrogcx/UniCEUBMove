<!DOCTYPE html>
<html>

    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <head>

        <title>Resultado - Pesquisar Carona</title>

        <!-- Referenciando o AngularJS. -->
        <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>

        <!-- jQuery necessario para os plugins ''Javascript Bootstrap'' -->
        <script src="js/jquery-1.11.1.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>

        <!-- Indica ao navegador que o width da meta tag viewport é o tamanho da largura do dispositivo! Para zoom responsivo. -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- Referenciando o Bootstrap e o CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/style2.css" rel="stylesheet">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    </head>

    <body>

        <div class="navbar navbar-default navbar-fixed-top" id="menu" role="navigation">
            <div class="container">
                <div class="navbar-header">

                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>

                    </button>                

                    <img alt src="imagens/letreiroblack.png" id="logotipo">

                    <a class="navbar-brand" href="homePassageiro.html">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                    </a>               

                </div>
                <div class="navbar-collapse collapse"> 
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Opções<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="escolherPerfil.html"><span class="glyphicon glyphicon-transfer"></span>&nbsp; Selecionar outro perfil</a></li>
                            <li><a href="index.html"><span class="glyphicon glyphicon-off"></span>&nbsp; Sair</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            </div>
        </div>

        <br><hr width="250"> <!-- Insere uma linha para organizar a tela. -->

        <h1><b>Resultados:</b></h1><br>

        <form action="PesquisarCarona">
            <c:forEach items="${requestScope.lista}" var="carona">
                
                <input class="input input-lg" placeholder="Nº: ${carona.idProgramacao} | Data: ${carona.data}" readonly> 

                <a href="EscolherCarona?id=${carona.idProgramacao}">
                    <button type="button" class="btn btn-lg btn-success" type="submit">Detalhar</button></a>

                    <br><br>
                    
            </c:forEach>
    
    </form>
    </body>
</html>
