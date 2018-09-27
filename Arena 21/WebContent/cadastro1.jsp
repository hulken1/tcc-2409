<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>ARENA 21</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/cadastro.css" rel="stylesheet">
    <link href="css/padrao.css" rel="stylesheet">
    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!-- Bootstrap JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    <style>
        #return-to-top {
            z-index: 1;
        }
    </style>
</head>


<body>
    <div class="col-md-12" id="background">
    </div>
    <nav class="navtop">
        <a href="index.jsp">
            <img src="imagens/logo/coliseu2.png" class="imgsite">
        </a>
        <div class="menu">
            <div class="btn">
                <a href="poslogin.html">
                    <div class="botaocontato" class="botaocontato">Contato</div>
                    <link async href="http://fonts.googleapis.com/css?family=Quantico" data-generated="http://enjoycss.com" rel="stylesheet" type="text/css" />
                </a>
            </div>
        </div>
    </nav>


   
       <form name="cadastroJogador" action="CRUD/cadastrousuario.jsp" method="post" class="formularioCadastro" >
        <!-- DADOS PESSOAIS-->
        <fieldset>
            <legend>Dados Pessoais</legend>
            <label>Nome: </label>
            <input type="text" class="form-control input-sm" name="nome" id="Nome" placeholder="Nome">

            <label for="sobrenome">Sobrenome: </label>

            <input type="text" class="form-control input-sm" id="sobrenome" name="sobrenome" placeholder="Sobrenome">

            <label>Nascimento: </label>

            <input type="date"  name="datanascimento" name="dia" size="2" maxlength="2" value="dd" class="form-control input-sm" id="dia" placeholder="dia">


            <label for="Jogo Favorito">Jogo Favorito: </label>

            <input type="text" class="form-control input-sm" name="jogoFavorito" id="Jogo Favorito
            " placeholder="Jogo Favorito">

            <label>CPF:</label>

            <input type="text" name="cpf" size="14" maxlength="14" class="form-control" id="cpf" placeholder="CPF">


            <label for="cidade2">Cidade: </label>

            <input type="text" name="cidade" class="form-control input-sm"  id="cidade" placeholder="cidade">

        </fieldset>
        <fieldset class="horarios">
            <legend>Disponibilidade durante a semana</legend>


            <label>
    <input type="checkbox" name="diaS" value="dia">Dia
    </label>

            <label>
    <input type="checkbox" name="tardeS" value="dia">Tarde
    </label>

            <label>
    <input type="checkbox" name="noiteS"  value="dia">Noite
    </label>

        </fieldset>



        <fieldset class="horarios">
            <legend>Disponibilidade durante o final de semana</legend>


            <label>
    <input type="checkbox" name="finalD" value="dia">Dia
    </label>

            <label>
    <input type="checkbox" name="finalT" value="dia">Tarde
    </label>

            <label>
    <input type="checkbox" name="finalN" value="dia">Noite
    </label>
        </fieldset>
        <!-- DADOS DE LOGIN -->
        <fieldset>
            <legend>Dados de login</legend>
            <table cellspacing="10">

                <label for="email">E-mail: </label>

                <input type="text" name="email" class="form-control">


                <label for="imagem">Imagem de perfil:</label>

                <input type="file" name="imagem">


                <label for="login">Login de usuÃ¡rio: </label>

                <input type="text" name="login" class="form-control input-sm" id="login" placeholder="login">

                <label for="pass">Senha: </label>

                <input type="password" name="pass" class="form-control input-sm" id="password" placeholder="password">

                <label for="passconfirm">Confirme a senha: </label>

                <input type="password" name="passconfirm" class="form-control input-sm" id="passconfirm" placeholder=" Repetir password">

            </table>
        </fieldset>
       

        <div class="botoescadastro">
            <input type="submit" class="btn btn-danger btn">
            <input type="reset" value="Limpar" class="btn btn-danger btn">
        </div>
    </form>
    
    <a href="javascript:" id="return-to-top"><i class="glyphicon glyphicon-chevron-up"></i></a>
    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!-- Bootstrap JavaScript -->
    <script src="js/padrao.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
<footer>
    <div class="container">
        <div class="row">
            <div class="col-sm-10">
                <small>Â© 2018 Copyright:</small>
                <strong>Ademilson 
                    Adolfo
                    Marcos
                    Sergio
            </strong>
            </div>

        </div>
    </div>
</footer>