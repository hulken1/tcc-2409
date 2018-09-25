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
			
					estrutura += "<div class='col-md-3' id='thumbImage'>";					
					estrutura += "<p>"+"<h1>Sala: </h1>"+rs.getString("nomeSala")+"</p>";
					estrutura += "<p class='texto'>"+rs.getString("nomeJogo")+"</p>"; 
					estrutura += "<button class='btn btn-primary' id='botaoEntrar'>Entrar</button>";
					estrutura += "</div>";		
					
					
		
			
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
