<!DOCTYPE html>
<html>
<head>

        <title>Resultado - Programar Carona</title>
        
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
        
        <h2><b>Carona programada com sucesso!</b></h2>
        
        <hr width="250"> <!-- Insere uma linha para organizar a tela. -->
        
        <img src="imagens/volantemove.png" id="volante">
        
        <br><br>
        
        <!-- Grid System - Bootstrap -->
    
    <div class="row">
    <div class="col-md-2"> Código da Carona: ${requestScope.idProgramacao} </div>
    <div class="col-md-2"> Origem: ${requestScope.origem}</div>
    <div class="col-md-2"> Destino: ${requestScope.destino} </div>
    <div class="col-md-2"> Data: ${requestScope.data} </div>
    <div class="col-md-2"> Vagas: ${requestScope.vagas} </div>
    <div class="col-md-2"> Adicional: ${requestScope.adicional} </div>
    
    </div>
    
    
    
    
    </body>
</html>