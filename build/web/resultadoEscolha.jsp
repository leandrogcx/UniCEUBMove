<!DOCTYPE html>
<html>
<head>
        
        <title>Resultado da Carona Escolhida</title>
        
        <%@page contentType="text/html" pageEncoding="UTF-8"%>
        
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
                
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img alt src="imagens/letreiroblack.png" id="logotipo">            
                             
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

        <h2><b>Detalhes da Carona ${requestScope.Escolhido.idProgramacao}</b></h2>
        
<br>      

    <!-- Grid System - Bootstrap -->

    <div class="row">
    <div class="col-sm-2"> Saindo de: ${requestScope.Escolhido.origem}</div>
    <div class="col-md-2"> Indo até: ${requestScope.Escolhido.destino} </div>
    <div class="col-md-2"> Data: ${requestScope.Escolhido.data} </div>
    <div class="col-md-2"> Vagas disponíveis: ${requestScope.Escolhido.vagas} </div>
    <div class="col-md-2"> Informação adicional: ${requestScope.Escolhido.adicional} </div>
    <div class="col-md-2"> ID: ${requestScope.Escolhido.idProgramacao} </div>
    </div>

    <br><br><br>
    
    <!-- Button trigger modal -->
<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#pesquisar">
    &nbsp;<span class="glyphicon glyphicon-search"></span>&nbsp; &nbsp; <b>Nova pesquisa</b></button><br><br>
        
    <!-- Modal -->
<div class="modal fade" id="pesquisar" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h3 class="modal-title" id="pesquisar"><b>Pesquisar Carona</b></h3>
      </div>
      <div class="modal-body">
        <span class="glyphicon glyphicon-alert"></span>&nbsp; &nbsp;Tem certeza de que deseja abandonar a carona ${requestScope.Escolhido.idProgramacao} e pesquisar uma nova?
      </div>
      <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal"><b>Voltar</b></button>
        <a href="pesquisarCarona.html"><button type="button" class="btn btn-primary"><b>Nova pesquisa!</b></button></a>
      </div>
    </div>
  </div>
</div> 
    

    <!-- Button trigger modal -->
<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#selecionar">
    &nbsp;<span class="glyphicon glyphicon-ok"></span>&nbsp; &nbsp; <b>Selecionar Carona</b></button><br>

<!-- Modal -->
<div class="modal fade" id="selecionar" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h3 class="modal-title" id="selecionar"><b>Selecionar Carona</b></h3>
      </div>
      <div class="modal-body">
          <span class="glyphicon glyphicon-alert"></span>&nbsp; &nbsp;Tem certeza que deseja selecionar a carona ${requestScope.Escolhido.idProgramacao}?
      </div>
      <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal"><b>Voltar</b></button>
          <a href="selecionarCarona.html"><button type="button" class="btn btn-primary"><b>Selecionar!</b></button></a>
      </div>
    </div>
  </div>
</div> 
    
    </form>
    
    </body>
</html>
