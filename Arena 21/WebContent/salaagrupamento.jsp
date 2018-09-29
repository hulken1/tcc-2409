<%@page import="br.com.arena21.dao.AgrupamentoDao"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700' rel='stylesheet' type='text/css'>

        <link rel="stylesheet" href="css/reset.css">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <!-- CSS reset -->
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/padrao.css">
        <link rel="stylesheet" href="css/pesquisa.css">
                    

        <!-- Resource style -->

        <!-- Modernizr -->
        <title>Sala de Agrupamento</title>

    </head>
<body>

 <div id="background"></div>
    <div class="container-fluid">

        <!-- Topo -->
        <div class="row">
            <div class="col-md-12">
                <nav class="navtop">
                    <a href="">
                        <img src="imagens/logo/coliseu2.png" class="imgsite">
                    </a>
                </nav>
                </div>
                 </div>
                  </div>
<a id="btnSalas" type="submit" href="salas.jsp">Voltar</a>
	<div class="container">
	<div class="row">
<%
		out.print(new AgrupamentoDao().exibirJogadores());
%>
  </div>
</div>
 


 <!-- cd-main-content -->
 <div>
 <jsp:include page = "includes/footer.jsp" />
 </div>
 
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <a href="javascript:" id="return-to-top"><i class="glyphicon glyphicon-chevron-up"></i></a>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <script src="js/jquery.mixitup.min.js"></script>
        <script src="js/main.js"></script>
        <script src="js/padrao.js"></script>
       
</body>
</html>