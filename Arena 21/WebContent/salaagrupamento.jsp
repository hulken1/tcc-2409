<%@page import="br.com.arena21.connection.Conexao"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
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
	<%
	String idSala = String.valueOf(request.getParameter("idSala"));
	String idJogador = String.valueOf(request.getParameter("idJogador"));
	 try{
	    	
	       //Preparar o envio do parâmetro
	         
			
	         //SQL
	       String sql = "SELECT * FROM salasativas";

	         
	       //Preparar o envio do parâmetro
	       PreparedStatement pstmt = Conexao.obterConexao().prepareStatement(sql);
	       
	      //Execução e laço de repetição         
	       ResultSet rs = pstmt.executeQuery();

	       
	      while(rs.next()){
	    	  
	          //Sua estrutura contendo as imagens, textos e vídeos
%>

<div class="container">
  <h2>Condensed Table</h2>
  <p>The .table-condensed class makes a table more compact by cutting cell padding in half:</p>            
  <table class="table table-condensed">
    <thead>
      <tr>
        <th>Jogadores</th>
        <th>Jogadores</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><%=rs.getString("idJogador")%></td>
        <td>Doe</td>
        <td>john@example.com</td>
      </tr>
      
    </tbody>
  </table>
</div>
<%
	      }
	      
	  }catch(Exception e){
	        out.print("Falha ao exibir tabela");
	  }
%>
</body>
</html>