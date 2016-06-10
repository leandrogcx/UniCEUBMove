<!DOCTYPE html>
<html>
<head>

        <title>Caronas Programadas</title>
        
         
        <%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        
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
                
                <a class="navbar-brand" href="homeMotorista.html">
                <span class="glyphicon glyphicon-chevron-left"></span>
                </a>               
                             
            </div>
            <div class="navbar-collapse collapse"> 
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Opções<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="homeMotorista.html"><span class="glyphicon glyphicon-transfer"></span>&nbsp; Selecionar outro perfil</a></li>
                            <li><a href="index.html"><span class="glyphicon glyphicon-off"></span>&nbsp; Sair</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>
        
        <h2><b>Caronas Programadas</b></h2>
        
        <br><br>

        <c:forEach items="${requestScope.lista}" var="caronas">

        Caronas: ${caronas}

        </c:forEach>
    
    <br><br>      
        
<div class="row">
  <div class="col-xs-4 col-sm-4"></div>
  <div class="col-xs-4 col-sm-4"></div>
  <div class="col-xs-4 col-sm-4">      
      
       <!-- Button trigger modal -->
        <button type="button" class="btn btn-lg btn-danger" data-toggle="modal" data-target="#myModal">
            &nbsp;<span class="glyphicon glyphicon-plus"></span><b>&nbsp; &nbsp; Programar Carona</b></button></div>
      
      <!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel"><b>Confirmação</b></h4>
      </div>
      <div class="modal-body">
        	<span class="glyphicon glyphicon-alert"></span>&nbsp; &nbsp;Deseja mesmo programar uma nova carona?
      </div>
      <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal"><b>Voltar</b></button>
        <a href="programarCarona.html"><button type="button" class="btn btn-primary"><b>Programar!</b></button></a>
      </div>
    </div>
  </div>
</div>
      
      
</div>
    </body>
</html>
