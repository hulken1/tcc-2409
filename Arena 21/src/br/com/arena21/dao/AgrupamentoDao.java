package br.com.arena21.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import br.com.arena21.connection.Conexao;

public class AgrupamentoDao {
	private Connection conexao;
	
	
	public String exibirJogadores() {
		
	
		String estrutura = "";

		//Tenta executar a ação
		try{
		
		//SQL
			
		String sql = "SELECT salas.nomeSala, cadastrojogador.nome FROM salasativas INNER JOIN salas ON salasativas.idSala = salas.idSala INNER JOIN cadastrojogador ON salasativas.idJogador = cadastrojogador.idJogador";

		//Obter dados das salas
		Statement stmt = Conexao.obterConexao().createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		int indice = 0;
		
		while(rs.next()){
			
			if(indice % 2 == 0){
				estrutura +="<div class='row'>";
			}
			estrutura+= " <div class='col-md-6'>";
			estrutura+= "<table class='table'>";
			estrutura+= "<thead>";
			estrutura+= "<tr>";
			estrutura+= "<th>Jogadores</th>";
			estrutura+= "<th>Jogadores</th>";
			estrutura+= " </tr>";
			estrutura+= " </thead>";
			estrutura+= "<tbody>";
			estrutura+= "<tr>";
			estrutura+= " <td style='background-color:white'>"+rs.getString("nomeSala")+"</td>";
			estrutura+= "<td>Doe</td>";
			estrutura+= " <td>john@example.com</td>";
			estrutura+= " </tr>";
			estrutura+= "  </div>";   
			estrutura+= " </tbody>";
			estrutura+= "   </table>";
		
			
										
			estrutura+= "  </div>";																		
			  if(indice % 2 == 0){
	estrutura +="</div'>";
}

//Incrementar o índice
indice++;

}

	
}catch(Exception e){
	estrutura = "FERROU!"+e.getMessage();
}

//Retorno
return estrutura;

}


}
