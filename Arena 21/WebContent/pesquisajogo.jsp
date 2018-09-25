    

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
                <nav class="row navtop">
                    <a href="index.html">
                        <img src="imagens/logo/coliseu2.png" class="imgsite">
                    </a>
                </nav>
                
	<div class="col-md-1">
	
	<button class="btn btn-danger"></button>
		
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
          
          			<div class='col-md-3' id='thumbImage'>				
					<p><h1><%=rs.getString("nomeSala") %></h1></p>
					<p><%=rs.getString("nomeJogo") %></p>
					<button class='btn btn-primary' id='botaoEntrar'>Entrar</button>
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
     						<input type="reset" href="salas.jsp">
					</form>


                        </div>
                        <!-- cd-filter-content -->
                    </div>
                    <div class="cd-filter-block">
                        <h4> Cidades </h4>
                        <div class="cd-filter-content">

                            <select id="estado1" value="Selecione Estado"></select>
                            <select id="cidade1" value="Selecione Cidade"></select>


                            <!-- cd-select -->
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
        <script type="text/javascript" src="js/cidades-estados-utf8.js"></script>
			<script language="JavaScript" type="text/javascript" charset="utf-8">
      		new dgCidadesEstados({
        cidade: document.getElementById('cidade1'),
        estado: document.getElementById('estado1')
      })
    </script>
        <!-- Resource jQuery -->
       
            </body>

            </html>




