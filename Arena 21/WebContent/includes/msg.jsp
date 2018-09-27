<%

	//Verificar se há variável msg na URL
	if(request.getParameter("msg") != null){
		
		//Obter a mensagem
		String msg = request.getParameter("msg");
		
		//Exibir a mensagem
		switch(msg){
			case "falhaLogin":
				out.print("<div class='alert alert-danger msg'>Usuário ou senha incorretos.</div>");
			break;
			
			case "sessaoExpirada":
				out.print("<div class='alert alert-danger msg'>Sessão expirada, faça o login novamente.</div>");
			break;
			
			case "saida":
				out.print("<div class='alert alert-success msg'>Você saiu da área restrita com sucesso.</div>");
			break;

		}
		
	}
%>