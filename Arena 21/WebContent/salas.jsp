<!Doctype html>

<%@page import="br.com.arena21.dao.SalaDao"%>
    <html lang="pt-br">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700' rel='stylesheet' type='text/css'>

        <link rel="stylesheet" href="css/reset.css">
        <!-- CSS reset -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
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
            <div class="col-md-12">
                <nav class="row navtop col-md-12">
                    <a href="index.html">
                        <img src="imagens/logo/coliseu2.png" class="imgsite">
                    </a>
                </nav>
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

						out.print(new SalaDao().exibirSalas());
	
	
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
                            <small>� 2018 Copyright:</small>
                            <strong>Ademilson 
                                        Adolfo
                                        Marcos
                                        Sergio
                                </strong>
                        </div>

                    </div>
                </div>

            </footer>
                    <a href="javascript:" id="return-to-top"><i class="glyphicon glyphicon-chevron-up"></i></a>
        </div>

        <!-- cd-main-content -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <script src="js/jquery.mixitup.min.js"></script>
        <script src="js/main.js"></script>
        <script src="js/padrao.js"></script>
        
        <!-- Resource jQuery -->
       
            </body>

            </html>