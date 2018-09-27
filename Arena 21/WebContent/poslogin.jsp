<!DOCTYPE html>


<%@page import="br.com.arena21.bean.UsuarioBean"%>
<%@page import="br.com.arena21.connection.Conexao"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>P�s Login</title>
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
    <div id="background">
    </div>
    <nav class="navtop">
        <a href="index.jsp">
            <img src="imagens/logo/coliseu2.png" class="imgsite">
        </a>

    </nav>
    <div class="barraleft">
        <ul class="nav navbar-nav">
            <li class="dropdown">
            <%
            UsuarioBean ub = new UsuarioBean();
            try{
           		ub = (UsuarioBean) session.getAttribute("sessaoUsuario");

				  %>
	        	   <a href="#" data-toggle="dropdown"><span class="dropdown-toggle" ><% out.print(ub.getNome()); %></span></a>
	        	  
	        	  <% }catch(Exception e){
            	out.print("Voc� n�o est� logado.");
            }
  
%>
                
                <ul class="dropdown-menu">
                <li><a href="#" id="salas"  onclick="window.location.href='salas.jsp'" title="Salas"><img src="imagens/icones/salas.png" ></a></li>
                    <li><a id="config">Configura��es de conta <span class="glyphicon glyphicon-cog pull-right"></span></a></li>
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
                         <button type="button" class="close" data-dismiss="modal"><span>�</span></button>
                         <h4 id="modaltitulo" class="modal-title">Dados Do Usuario</h4>
                     </div>
                     <div id="modalbody" class="modal-body">
                        <div id="modalbody" class="panel panel-info">
                            <div id="modalbody2" class="panel-heading">
                              <h3 id="modaltitulo" class="panel-title">Nome Usuario</h3>
                            </div>
                            
                            <div class="panel-body">
                              <div id="modalbody" class="row">
                                
                                <div id="modaltitulo" class="col-xs-10 col-sm-10 hidden-md hidden-lg"> <br>
                                  <dl>
                                    <dt>DEPARTMENT:</dt>
                                    <dd>Administrator</dd>
                                    <dt>HIRE DATE</dt>
                                    <dd>11/12/2013</dd>
                                    <dt>DATE OF BIRTH</dt>
                                       <dd>11/12/2013</dd>
                                    <dt>GENDER</dt>
                                    <dd>Male</dd>
                                  </dl>
                                </div>
                                <div id="modaltitulo" class=" col-md-9 col-lg-9 "> 
                                  <table id="modalbody" class="table table-user-information">
                                    <tbody>
                                       <tr>
                                         <td>ID-TAG</td>
                                         <td>#123</td>
                                     </tr>       
                                      <tr>
                                        <td>Jogo Favorito:</td>
                                        <td>Programming</td>
                                      </tr>
                                      
                                      <tr>
                                        <td>Data de Nascimento</td>
                                        <td>01/24/1988</td>
                                      </tr>
                                   
                                         <tr>
                                             <tr>
                                        <td>Genero</td>
                                        <td>Female</td>
                                      </tr>
                                        <tr>
                                        <td>Endere�o</td>
                                        <td>Kathmandu,Nepal</td>
                                      </tr>
                                      <tr>
                                        <td>Email</td>
                                        
                                      </tr>
                                        <td>Telefone</td>
                                        <td>123-4567-890(Landline)<br><br>555-4567-890(Mobile)
                                        </td>
                                           
                                      </tr>
                                     
                                    </tbody>
                                  </table>                                                               
                                </div>
                              </div>
                            </div>
                                 <div id="modalbody" class="panel-footer">
                                        <a data-original-title="Broadcast Message" data-toggle="tooltip" type="button" class="btn btn-sm btn-primary"><i class="glyphicon glyphicon-envelope"></i></a>
                                        <span class="pull-right">
                                            <a href="edit.html" data-original-title="Edit this user" data-toggle="tooltip" type="button" class="btn btn-sm btn-warning"><i class="glyphicon glyphicon-edit"></i></a>
                                            <a data-original-title="Remove this user" data-toggle="tooltip" type="button" class="btn btn-sm btn-danger"><i class="glyphicon glyphicon-remove"></i></a>
                                        </span>
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
                                <td><button type="" title="Add Amigo"><img src="imagens/icons8-adicionar-usu�rio-masculino-15.png" > </a> </td>
                                    <td><button type="" title="Bloquear"><img src="imagens/icons8-remover-usu�rio-masculino-15.png" > </a> </td>
                                   <td><button type="" title="Reportar"><img src="imagens/icons8-erro-15.png" > </a> </td>
                              </tr>
                              <tr>
                                <td>2</td>
                                <td>Bob</td>
                                <td>boblahblah</td>
                                <td><button type="" title="Add Amigo"><img src="imagens/icons8-adicionar-usu�rio-masculino-15.png" > </a> </td>
                                    <td><button type="" title="Bloquear"><img src="imagens/icons8-remover-usu�rio-masculino-15.png" > </a> </td>
                                   <td><button type="" title="Reportar"><img src="imagens/icons8-erro-15.png" > </a> </td>
                              </tr>
                              <tr>
                                <td>3</td>
                                <td>Holden</td>
                                <td>penceyreject</td>
                                <td><button type="" title="Add Amigo"><img src="imagens/icons8-adicionar-usu�rio-masculino-15.png" > </a> </td>
                                    <td><button type="" title="Bloquear"><img src="imagens/icons8-remover-usu�rio-masculino-15.png" > </a> </td>
                                   <td><button type="" title="Reportar"><img src="imagens/icons8-erro-15.png" > </a> </td>
                              </tr>
                              <tr>
                                    <td>4</td>
                                    <td>Hoen</td>
                                    <td>pack</td>
                                    <td><button type="" title="Add Amigo"><img src="imagens/icons8-adicionar-usu�rio-masculino-15.png" > </a> </td>
                                        <td><button type="" title="Bloquear"><img src="imagens/icons8-remover-usu�rio-masculino-15.png" > </a> </td>
                                       <td><button type="" title="Reportar"><img src="imagens/icons8-erro-15.png" > </a> </td>
                                  </tr>
                                  <tr>
                                        <td>5</td>
                                        <td>legend</td>
                                        <td>L2</td>
                                        <td><button type="" title="Add Amigo"><img src="imagens/icons8-adicionar-usu�rio-masculino-15.png" > </a> </td>
                                            <td><button type="" title="Bloquear"><img src="imagens/icons8-remover-usu�rio-masculino-15.png" > </a> </td>
                                           <td><button type="" title="Reportar"><img src="imagens/icons8-erro-15.png" > </a> </td>
                                      </tr>
                                      <tr>
                                            <td>6</td>
                                            <td>j�o</td>
                                            <td>jaozinho</td> 
                                            <td><button type="" title="Add Amigo"><img src="imagens/icons8-adicionar-usu�rio-masculino-15.png" > </a> </td>
                                                <td><button type="" title="Bloquear"><img src="imagens/icons8-remover-usu�rio-masculino-15.png" > </a> </td>
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
              <div class="panel-title">Create New Password</div>
          </div>                     
          <div id="modalbody" class="panel-body" >
              <form id="signupform" class="form-horizontal" role="form">
                  <div class="form-group">
                      <label for="email" class=" control-label col-sm-3">Registered email</label>
                      <div class="col-sm-9">
                          <input type="text" class="form-control" name="email" placeholder="Please input your email used to register with us">
                      </div>
                  </div>
                  <div class="form-group">
                      <label for="email" class=" control-label col-sm-3">New password</label>
                      <div class="col-sm-9">
                          <input type="password" class="form-control" name="password" placeholder="create your new password">
                      </div>
                  </div>
                  <div class="form-group">
                      <label for="email" class=" control-label col-sm-3">Confirm password</label>
                      <div class="col-sm-9">
                          <input type="password" class="form-control" name="password_confirmation" placeholder="confirm your new password">
                      </div>
                  </div>
                  <div class="form-group">
                      <!-- Button -->                                 
                      <div class="  col-sm-offset-3 col-sm-9">
                          <button id="btn-signup" type="button" class="btn btn-success">Submit</button>
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
<input type="text" placeholder="Cole Link Stream aqui" class="form-control input-sm" id="link">
  <!-- submit = botao , value= por nome do botao -->
  <input type="submit" value="Enviar Stream" class="btn btn-danger btn">

  <br>
    <br>
    <br>
    <br>
<div id="video" class="container">

          
                
    <ul class="list-unstyled video-list-thumbs row">
        <li class="col-md-6">
            <a href="#" title="live">
                <iframe src="https://player.twitch.tv/?channel=immortoru " frameborder="0" allowfullscreen="true" scrolling="no" height="600" width="500" ></iframe><a href="https://www.twitch.tv/immortoru?tt_content=text_link&tt_medium=live_embed" style="padding:2px 0px 4px; display:block; width:345px; font-weight:normal; font-size:10px; text-decoration:underline;"></a>
                 </a>
            <br>
        </li>
        <li class="col-md-6">
            <a href="#" title="Chat">

            </a>
                </li>
                <iframe src="https://www.twitch.tv/embed/immortoru/chat" frameborder="0" scrolling="no" height="600" width="500" ></iframe>
                <li class="col-md-4">
           
    
    
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
    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="js/padrao.js"></script>
    <script src="js/friend.js"></script>
    <!-- Bootstrap JavaScript -->
    <script src="js/bootstrap.min.js"></script>
</body>
