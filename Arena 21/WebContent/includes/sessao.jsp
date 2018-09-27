<%

	//Verificar se há sessão usuário
	if(session.getAttribute("sessaoUsuario") == null){
		response.sendRedirect("index.jsp?msg=sessaoExpirada");
	}

%>