package br.com.arena21.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import br.com.arena21.connection.Conexao;



public class SalaDao {

	//Variável contendo a conexão
	private Connection conexao;
	
	//Construtor

	//Método para retornar as salas
	public String exibirSalas(){
		

		//Estrutura
		String estrutura = "";

		//Tenta executar a ação
		try{
		
		//SQL
		String sql = "SELECT * FROM salas";

		//Obter dados das salas
		Statement stmt = Conexao.obterConexao().createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		int indice = 0;
		
		while(rs.next()){
			
			if(indice % 4 == 0){
				estrutura +="<div class='row'>";
			}
			
			estrutura +="<div class='col-md-3' id='painelSala'>";					
					estrutura += "<div id='nomesala'>";
						estrutura +="<small id='textoSmall'>Sala: </small>";
								estrutura +="<span class='label' id='textoSala'>"+rs.getString("nomeSala")+"</span>";	
								estrutura += "</div>";
								estrutura += "<div id='nomejogo'>";
								estrutura +="<small id='textoSmall'>Jogo: </small>";
								estrutura +="<span class='label'id='textoSala' >"+rs.getString("nomeJogo")+"</span>";								
								estrutura += "</div>";
							
								estrutura += "<div class='idjogador'>";
								estrutura +="<small id='textoSmall'>Id Sala: </small>";
						estrutura +="<span class='label' id='textoSala'style='color:#1E90FF'>#"+rs.getInt("idSala")+"</span>";
						estrutura += "</div>";	
						estrutura += "<div>";
						estrutura +="<button class='btn btn-default' id='botaoEntrar'>Entrar</button>";
						estrutura += "</div>";	
					estrutura +="</div>	";	
					
																							
																							
		if(indice % 4 == 0){
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
