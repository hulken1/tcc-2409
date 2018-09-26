    

<%@page import="java.sql.PreparedStatement"%>
<%@page import="br.com.arena21.connection.Conexao"%>
<%@page import="java.sql.ResultSet"%>

<!Doctype html>

<%@page import="br.com.arena21.dao.SalaDao"%>
    <html lang="pt-br">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700' rel='stylesheet' type='text/css'>

        <link rel="stylesheet" href="css/reset.css">
        <!-- CSS reset -->
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/padrao.css">
        <link rel="stylesheet" href="css/pesquisa.css">
                    

        <!-- Resource style -->

        <!-- Modernizr -->
        <title>Salas Jogos</title>

    </head>

    <div id="background"></div>
    <div class="container-fluid">

        <!-- Topo -->
        <div class="row">
            <div class="col-md-11">
                <nav class="navtop">
                    <a href="index.html">
                        <img src="imagens/logo/coliseu2.png" class="imgsite">
                    </a>
                </nav>
                
	<div class="col-md-1">	
	<a id="btnSalas" type="submit" href="salas.jsp">Exibir Salas</a>
		<a id="btnSalas" type="submit" data-target="#modal-sala" data-toggle="modal">Criar Sala</a>
	</div>
	
            </div>
        </div>

        <main class="cd-main-content">
            <div class="cd-tab-filter-wrapper">
                <div class="cd-tab-filter">
				
                    <!-- cd-filters -->
                </div>
                <!-- cd-tab-filter -->
            </div>
            <!-- cd-tab-filter-wrapper -->
	<div class="container">
	
	<div class="row">
            <section class="cd-gallery">
	<div class="modal fade" id="modal-sala" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
    	  <div class="modal-dialog">
				<div class="loginmodal-container">
					<h1>Cadastro de Sala</h1><br>
				  <form name="cadastroSala" action="CRUD/cadastrosala.jsp" method="post">
					<input type="text" name="nomeSala" placeholder="Nome Sala">
					<input type="text" name="nomeJogo" placeholder="Jogo">
					<input type="submit" class="login loginmodal-submit" value="Cadastrar">
				  </form>
					
				  
				</div>
			</div>
		  </div>
<%
String pesquisajogo = String.valueOf(request.getParameter("nomeJogo"));
    try{
    	
       //Preparar o envio do parâmetro
         
		
         //SQL
       String sql = "SELECT * FROM salas WHERE nomeJogo LIKE ?";

         
       //Preparar o envio do parâmetro
       PreparedStatement pstmt = Conexao.obterConexao().prepareStatement(sql);
       pstmt.setString(1, "%"+pesquisajogo+"%");

      //Execução e laço de repetição         
       ResultSet rs = pstmt.executeQuery();

       
      while(rs.next()){
    	  
          //Sua estrutura contendo as imagens, textos e vídeos
%>
          			
          			<div class='col-md-3' id="painelSala">	
          			<div class="panel-group">
          			<div class="panel panel-default">
          			<div class="panel-body"><small>Sala</small>
          			<span class="label label-success" id="textoSala"><%=rs.getString("nomeSala") %></span>
          			</div>
 					<div class="panel-body"><h1 >Sala: <span class="label label-success" id="textoSala"><%=rs.getString("nomeJogo") %></span></h1></div>
  					</div>			
					<div class="panel-footer"><%=rs.getInt("idSala") %></div>
					<button class='btn btn-primary' id='botaoEntrar'>Entrar</button>
					</div>
					</div>
          		
          
          <% 
      
    }
     
  }catch(Exception e){
        out.print("Falha");
  }

%>
</div>
</div>
                    
            </section>
            <!-- cd-gallery -->

            <div class="cd-filter">
          
                    <div class="cd-filter-block">
                        <h4>Jogo</h4>
                        <div class="cd-filter-content">

                     <form action="pesquisajogo.jsp" method="get">
    						<input type="text" name="nomeJogo" placeholder="Nome jogo que procura">
     						<input type="submit">
     						
					</form>
                        </div>
                        
                        <!-- cd-filter-content -->
                    </div>
                    
              
                <a href="#0" class="cd-close">Close</a>
            </div>
            <!-- cd-filter -->

            <a href="#0" class="cd-filter-trigger">Filtro</a>
        </main>

        </main>
 
        <div>
        
            <footer>
                <div class="container">
                    <div class="row">
                        <div class="col-sm-10">
                            <small>ï¿½ 2018 Copyright:</small>
                            <strong>Ademilson 
                                        Adolfo
                                        Marcos
                                        Sergio
                                </strong>
                        </div>

                    </div>
                </div>

            </footer>
        </div>

        <!-- cd-main-content -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <a href="javascript:" id="return-to-top"><i class="glyphicon glyphicon-chevron-up"></i></a>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <script src="js/jquery.mixitup.min.js"></script>
        <script src="js/main.js"></script>
        <script src="js/padrao.js"></script>
       
        <!-- Resource jQuery -->
       
            </body>

            </html>




