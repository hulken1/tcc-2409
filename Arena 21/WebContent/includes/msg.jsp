<%

	//Verificar se h� vari�vel msg na URL
	if(request.getParameter("msg") != null){
		
		//Obter a mensagem
		String msg = request.getParameter("msg");
		
		//Exibir a mensagem
		switch(msg){
			case "falhaLogin":
				out.print("<div class='alert alert-danger msg'>Usu�rio ou senha incorretos.</div>");
			break;
			
			case "sessaoExpirada":
				out.print("<div class='alert alert-danger msg'>Sess�o expirada, fa�a o login novamente.</div>");
			break;
			
			case "saida":
				out.print("<div class='alert alert-success msg'>Voc� saiu da �rea restrita com sucesso.</div>");
			break;

		}
		
	}
%>