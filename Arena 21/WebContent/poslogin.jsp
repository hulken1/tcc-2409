<!DOCTYPE html>


<%@page import="br.com.arena21.bean.UsuarioBean"%>
<%@page import="br.com.arena21.connection.Conexao"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Pós Login</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/poslogin.css" rel="stylesheet">
    <link href="css/padrao.css" rel="stylesheet">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

 </head>
<script>
    $(document).ready(function(){
        $("#conta").click(function(){
            $("#modal-mensagem").modal();
        });
    });

      $(document).ready(function(){
        $("#list").click(function(){
            $("#modal-list").modal();
        });
    });

         $(document).ready(function(){
        $("#config").click(function(){
            $("#modal-config").modal();
        });
    });
    </script>
<body >

    <div id="background"></div>
    <div>
    <jsp:include page = "includes/logotipo.jsp" />
    </div>
   
    <div class="barraleft">
        <ul class="nav navbar-nav">
            <li class="dropdown">
            <%
            UsuarioBean ub = new UsuarioBean();
            try{
           		ub = (UsuarioBean) session.getAttribute("sessaoUsuario");
           		

				  %>
	        	   <a href="#" data-toggle="dropdown"><span class="dropdown-toggle" ><% out.print("Bem vindo: <strong id='texto'>"+ub.getLogin()); %></strong></span></a>
	        	  
	        	  <% }catch(Exception e){
            	out.print("Você não está logado.");
            }
  
%>
                
                <ul class="dropdown-menu">
                <li><a href="#" id="salas"  onclick="window.location.href='salas.jsp'" title="Salas">Salas</a></li>
                 <li class="divider"></li>
                    <li><a id="config">Configurações de conta <span class="glyphicon glyphicon-cog pull-right"></span></a></li>
                    <li class="divider"></li>
                    <li><a id="conta">Dados do Usuario <span class="glyphicon glyphicon-stats pull-right"></span></a></li>
                    
                    <li class="divider"></li>
                    
                    <li><a href="#">Mensagens <span class="glyphicon glyphicon-envelope pull-right"> 0 </span></a></li>
                    <li class="divider"></li>
                    <li><a id="list">Lista de Amigos <span class="glyphicon glyphicon-heart pull-right"></span></a></li>
                    <li class="divider"></li>
                    <li><a href="sair.jsp">Sair <span class="glyphicon glyphicon-log-out pull-right"></span></a></li>
                </ul>
            </li>
        </ul>
    </div>
   
<!-- modal dados usuario -->
    </section>
    <div class="modal fade" id="modal-mensagem">
            <div class="modal-dialog">
                 <div id="modalbody" class="modal-content">
                     <div class="modal-header">
                         <button type="button" class="close" data-dismiss="modal"><span>×</span></button>
                         <h4 id="modaltitulo" class="modal-title">Dados Do Usuario</h4>
                     </div>
                     <div id="modalbody" class="modal-body">
                        <div id="modalbody" class="panel panel-info">
                            <div id="modalbody2" class="panel-heading">
                              <h3 id="modaltitulo" class="panel-title"><h1 id="estiloNomeUsuario"><% out.print(ub.getNome());%> <% out.print(ub.getSobrenome()); %></h1>
                            </div>
                            
                            <div class="panel-body">
                              <div id="modalbody" class="row">
                                
                                <div id="modaltitulo" class="col-md-12"> <br>

                                  <dl>
                                    <h5>Informacões</h5>
                                    
                                  </dl>
                                </div>
                                <div id="modaltitulo" class=" col-md-12 "> 
                                  <table id="modalbody" class="table table-user-information">

                                    <tbody>
                                       <tr>
                                         <td>ID-TAG</td>
                                         <td><% out.print("#"+ub.getIdJogador()); %></td>
                                     </tr>       
                                      <tr>
                                        <td>Jogo Favorito:</td>
                                        <td><% out.print(ub.getJogoFavorito()); %></td>
                                      </tr>
                                      
                                      <tr>
                                        <td>Data de Nascimento</td>
                                        <td><% out.print(ub.getDatanascimento()); %></td>
                                      </tr>
                                                                   
                                        <tr>
                                        <td>Cidade</td>
                                        <td><% out.print(ub.getCidade()); %></td>
                                      </tr>
                                      <tr>
                                      
                                        <td>Email</td>
                                        <td><% out.print(ub.getEmail()); %></td>
                                      </tr>
                                      
                                    </tbody>

                
                                  </table>                                                               
                                </div>
                              </div>
                            </div>
                                 <div id="modalbody" class="panel-footer">
                                        
                                    </div>
                            
                          </div>
                        </div>
                      </div>
                    </div>
                     </div>
                     <div class="modal-footer">
                     
                     </div>
                 </div>
             </div>
         </div>
  <!-- modal dados usuario FIM-->
<!-- modal lista de amigos -->


<div  class="modal fade" id="modal-list">
    <div id="modaltitulo" class="modal-dialog">
         <div  class="modal-content">
             </div>
             <div class="container">
                      <div class="row2">
                          <div class="col-md-3"></div>
                      <div class="col-md-6">
                        <div class="panel panel-primary">
                          <div class="panel-heading2">
                            <h3 class="panel-title">Lista de Amigos</h3>
                           
                          </div>
                          <div class="panel-body">
                            <input type="text" class="form-control" id="modalbody2" data-action="filter" data-filters="#dev-table" placeholder="Filtrar Amigos" />
                          </div>
                          <table class="table" id="dev-table" >
                            <thead>
                              <tr>
                                <th>#ID</th>
                                <th>Nome</th>
                                <th>Nick</th>
                                <th></th>
                                <th></th>
                                <th></th>
                              </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <td>1</td>
                                <td>Kilgore</td>
                                <td>kilgore</td>
                                <td><button type="" title="Add Amigo"><img src="imagens/icons8-adicionar-usuário-masculino-15.png" > </a> </td>
                                    <td><button type="" title="Bloquear"><img src="imagens/icons8-remover-usuário-masculino-15.png" > </a> </td>
                                   <td><button type="" title="Reportar"><img src="imagens/icons8-erro-15.png" > </a> </td>
                              </tr>
                              <tr>
                                <td>2</td>
                                <td>Bob</td>
                                <td>boblahblah</td>
                                <td><button type="" title="Add Amigo"><img src="imagens/icons8-adicionar-usuário-masculino-15.png" > </a> </td>
                                    <td><button type="" title="Bloquear"><img src="imagens/icons8-remover-usuário-masculino-15.png" > </a> </td>
                                   <td><button type="" title="Reportar"><img src="imagens/icons8-erro-15.png" > </a> </td>
                              </tr>
                              <tr>
                                <td>3</td>
                                <td>Holden</td>
                                <td>penceyreject</td>
                                <td><button type="" title="Add Amigo"><img src="imagens/icons8-adicionar-usuário-masculino-15.png" > </a> </td>
                                    <td><button type="" title="Bloquear"><img src="imagens/icons8-remover-usuário-masculino-15.png" > </a> </td>
                                   <td><button type="" title="Reportar"><img src="imagens/icons8-erro-15.png" > </a> </td>
                              </tr>
                              <tr>
                                    <td>4</td>
                                    <td>Hoen</td>
                                    <td>pack</td>
                                    <td><button type="" title="Add Amigo"><img src="imagens/icons8-adicionar-usuário-masculino-15.png" > </a> </td>
                                        <td><button type="" title="Bloquear"><img src="imagens/icons8-remover-usuário-masculino-15.png" > </a> </td>
                                       <td><button type="" title="Reportar"><img src="imagens/icons8-erro-15.png" > </a> </td>
                                  </tr>
                                  <tr>
                                        <td>5</td>
                                        <td>legend</td>
                                        <td>L2</td>
                                        <td><button type="" title="Add Amigo"><img src="imagens/icons8-adicionar-usuário-masculino-15.png" > </a> </td>
                                            <td><button type="" title="Bloquear"><img src="imagens/icons8-remover-usuário-masculino-15.png" > </a> </td>
                                           <td><button type="" title="Reportar"><img src="imagens/icons8-erro-15.png" > </a> </td>
                                      </tr>
                                      <tr>
                                            <td>6</td>
                                            <td>jão</td>
                                            <td>jaozinho</td> 
                                            <td><button type="" title="Add Amigo"><img src="imagens/icons8-adicionar-usuário-masculino-15.png" > </a> </td>
                                                <td><button type="" title="Bloquear"><img src="imagens/icons8-remover-usuário-masculino-15.png" > </a> </td>
                                               <td><button type="" title="Reportar"><img src="imagens/icons8-erro-15.png" > </a> </td>
                                          </tr>
                            </tbody>
                          </table>
                        </div>
                      </div>
             </div>
         </div>
    </div>
</div>

<!-- modal lista de amigos FIM -->


<!-- modal trocar senha -->

 <div class="modal fade" id="modal-config">
      <div class="modal-dialog">
           
              
<div class="container">
  <div id="passwordreset" style="margin-top:50px" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
      <div class="panel panel-info">
          <div class="panel-heading">
              <div class="panel-title">Crie uma nova senha</div>
          </div>                     
          <div id="modalbody" class="panel-body" >
              <form id="signupform" class="form-horizontal" role="form">
                  <div class="form-group">
                      <label for="email" class=" control-label col-sm-3">Email</label>
                      <div class="col-sm-9">
                          <input type="text" class="form-control" name="email" placeholder="Informe e-mail cadastrado">
                      </div>
                  </div>
                  <div class="form-group">
                      <label for="email" class=" control-label col-sm-3">Nova senha</label>
                      <div class="col-sm-9">
                          <input type="password" class="form-control" name="password" placeholder="Nova senha">
                      </div>
                  </div>
                  <div class="form-group">
                      <label for="email" class=" control-label col-sm-3">Confirmar senha</label>
                      <div class="col-sm-9">
                          <input type="password" class="form-control" name="password_confirmation" placeholder="Confirmar senha">
                      </div>
                  </div>
                  <div class="form-group">
                      <!-- Button -->                                 
                      <div class="  col-sm-offset-3 col-sm-9">
                          <div class="alert alert-success" style="display: none">
                                <a class="close" onclick="$('.alert').hide()">×</a>  
                                <strong>Enviado com sucesso!</strong>
                      </div>
                      <div class="col-sm-6">
                                <button type="reset" onclick="$('.alert').show()" value="Exibir Alert" class="btn btn-success btn-lg">Enviar</button>
                            </div>
                            </div>
                  </div>                             
              </form>
          </div>
      </div>
  </div>             
</div>
               </div>
                </div>


                
    <!-- Copyright -->
<!-- modal lista de amigos FIM -->
<br>
<form method="post">
<input type="text" placeholder="Cole Link Stream aqui" class="form-control input-md" id="link">
  <!-- submit = botao , value= por nome do botao -->
  <button id="enviarStream" type="reset" >Enviar stream</button>

</form>

  <br>
    <br>
    <br>
    <br>

 
          <div class="container" >
          <div class="row">
          
          <div class="col-md-8">
            <a href="#" title="live" class="rounded-circle">
                <iframe src="https://player.twitch.tv/?channel=gaules" frameborder="0" allowfullscreen="true" scrolling="no" height="378" width="620"></iframe><a href="https://www.twitch.tv/gaules?tt_content=text_link&tt_medium=live_embed" style="padding:2px 0px 4px; display:block; width:345px; font-weight:normal; font-size:10px; text-decoration:underline;"></a>
                 </a>
         
          </div>
          <div class="col-md-4">
          
            <a href="#" title="Chat">  
                <iframe src="https://www.twitch.tv/embed/gaules/chat" frameborder="0" scrolling="no" height="378" width="400"></iframe>
           </a>
          </div>
          </div>
        
           <div class="row">
          <div class="col-md-8">
          
            <a href="#" title="live" class="rounded-circle">
                <iframe src="https://player.twitch.tv/?channel=falloficial" frameborder="0" allowfullscreen="true" scrolling="no" height="378" width="620"></iframe><a href="https://www.twitch.tv/falloficial?tt_content=text_link&tt_medium=live_embed" style="padding:2px 0px 4px; display:block; width:345px; font-weight:normal; font-size:10px; text-decoration:underline;"></a>
                 </a>
         
          </div>
          <div class="col-md-4">
          
            <a href="#" title="Chat">  
                <iframe src="https://www.twitch.tv/embed/falloficial/chat" frameborder="0" scrolling="no" height="378" width="400"></iframe>
           </a>
          </div>
          </div>
          
          <div class="row">
          <div class="col-md-8">
          
            <a href="#" title="live" class="rounded-circle">
<iframe src="https://player.twitch.tv/?channel=netenho1" frameborder="0" allowfullscreen="true" scrolling="no" height="378" width="620"></iframe><a href="https://www.twitch.tv/netenho1?tt_content=text_link&tt_medium=live_embed" style="padding:2px 0px 4px; display:block; width:345px; font-weight:normal; font-size:10px; text-decoration:underline;"></a>                 </a>
         
          </div>
          <div class="col-md-4">
          
            <a href="#" title="Chat">  
<iframe src="https://www.twitch.tv/embed/netenho1/chat" frameborder="0" scrolling="no" height="378" width="400"></iframe>           </a>
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
    <!-- Copyright -->

   <jsp:include page = "includes/footer.jsp" />
    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="js/padrao.js"></script>
    <script src="js/friend.js"></script>
    <!-- Bootstrap JavaScript -->
    <script src="js/bootstrap.min.js"></script>
</body>
