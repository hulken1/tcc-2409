<%@page import="java.sql.Connection"%>
<%@page import="br.com.arena21.connection.Conexao"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <!-- CSS reset -->
        <link rel="stylesheet" href="css/padrao.css">
        <link rel="stylesheet" href="css/salaagrupamentos.css">
        <!-- Resource style -->

        <!-- Modernizr -->
        <title>Sala de Agrupamento</title>

    </head>
<body>

 <div id="background"></div>
 
  <jsp:include page = "includes/logotipo.jsp" />
  </nav>
<div class="container-fluid">
<div class="row">
<div class="col-md-12">
<div class="table-responsive">
  <table class="table-fill">
<thead>
<tr>
<th class="text-left">JOGADORES</th>
<th class="text-right">JOGADORES</th>
</tr>
</thead>
<tbody class="table-hover">
<tr>
<td class="text-left">jorge12</td>
<td class="text-right">jamilekk</td>
</tr>
<tr>
<td class="text-left">killer664</td>
<td class="text-right">moidafocka</td>
</tr>
<tr>
<td class="text-left">CorreBergue</td>
<td class="text-right">sentaLaClaudia</td>
</tr>
<tr>
<td class="text-left">correFIAO</td>
<td class="text-right">kkkkkkkk</td>
</tr>
<tr>
<td class="text-left">thebest</td>
<td class="text-right">hu3BR</td>
</tr>
</tbody>
</table>
</div>
</div>
</div>
 </div>
 <div class="container-fluid">
<div class="row">
<div class="col-md-12">
<div id="botoes">
<a id="btnLobby" type="submit" href="salas.jsp">Voltar ao Lobby</a>
<a id="btnTroca" type="submit" href="">Trocar Equipe</a>
</div>
</div>
</div>
</div>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<div class="row">
  <jsp:include page = "includes/footer.jsp" />
</div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <a href="javascript:" id="return-to-top"><i class="glyphicon glyphicon-chevron-up"></i></a>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <script src="js/padrao.js"></script>
       
</body>
</html>