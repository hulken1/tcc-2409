<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-br">

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
    <script type="text/javascript">
			function fMasc(objeto,mascara) {
				obj=objeto
				masc=mascara
				setTimeout("fMascEx()",1)
			}
			function fMascEx() {
				obj.value=masc(obj.value)
			}
			function mTel(tel) {
				tel=tel.replace(/\D/g,"")
				tel=tel.replace(/^(\d)/,"($1")
				tel=tel.replace(/(.{3})(\d)/,"$1)$2")
				if(tel.length == 9) {
					tel=tel.replace(/(.{1})$/,"-$1")
				} else if (tel.length == 10) {
					tel=tel.replace(/(.{2})$/,"-$1")
				} else if (tel.length == 11) {
					tel=tel.replace(/(.{3})$/,"-$1")
				} else if (tel.length == 12) {
					tel=tel.replace(/(.{4})$/,"-$1")
				} else if (tel.length > 12) {
					tel=tel.replace(/(.{4})$/,"-$1")
				}
				return tel;
			}
			function mCNPJ(cnpj){
				cnpj=cnpj.replace(/\D/g,"")
				cnpj=cnpj.replace(/^(\d{2})(\d)/,"$1.$2")
				cnpj=cnpj.replace(/^(\d{2})\.(\d{3})(\d)/,"$1.$2.$3")
				cnpj=cnpj.replace(/\.(\d{3})(\d)/,".$1/$2")
				cnpj=cnpj.replace(/(\d{4})(\d)/,"$1-$2")
				return cnpj
			}
			function mCPF(cpf){
				cpf=cpf.replace(/\D/g,"")
				cpf=cpf.replace(/(\d{3})(\d)/,"$1.$2")
				cpf=cpf.replace(/(\d{3})(\d)/,"$1.$2")
				cpf=cpf.replace(/(\d{3})(\d{1,2})$/,"$1-$2")
				return cpf
			}
			function mCEP(cep){
				cep=cep.replace(/\D/g,"")
				cep=cep.replace(/^(\d{2})(\d)/,"$1.$2")
				cep=cep.replace(/\.(\d{3})(\d)/,".$1-$2")
				return cep
			}
			function mNum(num){
				num=num.replace(/\D/g,"")
				return num
			}
		</script>
		<script>
function myFunction() {
    alert("Cadastro Efetuado com Sucesso");
}
</script>
		
		
    <style>
        #return-to-top {
            z-index: 1;
        }
    </style>
</head>

<body>
    <div id="background"></div>
  	 <nav class="navtop">
        <a href="index.jsp">
            <img src="imagens/logo/coliseu2.png" class="imgsite">
        </a>
       
</nav>

   
       <form name="cadastroJogador" action="CRUD/cadastrousuario.jsp" method="post" class="formularioCadastro" >
        <!-- DADOS PESSOAIS-->
        <fieldset>
            <legend>Dados Pessoais</legend>
            <label>Nome: </label>
            <input type="text" class="form-control input-sm" name="nome" id="Nome" placeholder="Nome">
			<br>
            <label for="sobrenome">Sobrenome: </label>

            <input type="text" class="form-control input-sm" id="sobrenome" name="sobrenome" placeholder="Sobrenome">
			<br>
            <label>Nascimento: </label>

            <input type="date"  name="datanascimento" name="dia" size="2" maxlength="2" value="dd" class="form-control input-sm" id="dia" placeholder="dia">


            <label for="Jogo Favorito">Jogo Favorito: </label>

            <input type="text" class="form-control input-sm" name="jogoFavorito" id="Jogo Favorito
            " placeholder="Jogo Favorito">

            <label>CPF:</label>

           <input type="text" name="cpf" placeholder="  Cpf"  maxlength="14" size="14" onkeydown="javascript: fMasc( this, mCPF );">


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


                <label for="login">Login de Usuario: </label>

                <input type="text" name="login" class="form-control input-sm" id="login" placeholder="login">

                <label for="pass">Senha: </label>

                <input type="password" name="pass" class="form-control input-sm" id="password" placeholder="password">

                <label for="passconfirm">Confirme a senha: </label>

                <input type="password" name="passconfirm" class="form-control input-sm" id="passconfirm" placeholder=" Repetir password">

            </table>
        </fieldset>
       

        <div class="botoescadastro"> 
            <input type="submit" value="Cadastrar" onclick="myFunction()" class="btn btn-danger btn">
           </div>
    </form>
    
    <jsp:include page = "includes/footer.jsp" />
    
    
    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!-- Bootstrap JavaScript -->
    <script src="js/padrao.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
