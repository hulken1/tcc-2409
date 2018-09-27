function validaLogin(){
	
	//Obter elemntos
	var mensagem = document.getElementById("mensagem");
	var pass = document.getElementById("pass");

	if(senha.value.length < 5){
		//Exibindo mensagem
		mensagem.style.display = "block";
		
		//texto da mensagem
		mensagem.innerHTML = "A senha precisa ter pelo menos 5 caracteres";
		
		//Deixar o  cursor no campo email
		pass.focus;

		//retorno
		return false;
}
}