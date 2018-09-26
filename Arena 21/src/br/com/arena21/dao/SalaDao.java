package br.com.arena21.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import br.com.arena21.connection.Conexao;



public class SalaDao {

	//Vari�vel contendo a conex�o
	private Connection conexao;
	
	//Construtor

	//M�todo para retornar as salas
	public String exibirSalas(){
		

		//Estrutura
		String estrutura = "";

		//Tenta executar a a��o
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
			estrutura +="<div class='panel-group'>";
					estrutura +="<div class='panel panel-default'>";
							estrutura +="<div class='panel-body'><small>Sala</small>";
									estrutura +="<span class='label label-success' id='textoSala'>"+rs.getString("nomeSala")+"</span>";
											estrutura +="</div>";
								estrutura +="<div class='panel-body'><h1 >Sala: <span class='label label-success' id='textoSala'>"+rs.getString("nomeJogo")+"</span></h1></div>";
															estrutura +="</div>	";		
																	estrutura +="<div class='panel-footer'>"+rs.getInt("idSala")+"</div>";
																			estrutura +="<button class='btn btn-primary' id='botaoEntrar'>Entrar</button>";
																					estrutura +="</div>";
																							estrutura +="</div>";
					
					
		
			
		if(indice % 4 == 0){
			estrutura +="</div'>";
		}
		
		//Incrementar o �ndice
		indice++;
		
		}

			
		}catch(Exception e){
			estrutura = "FERROU!"+e.getMessage();
		}
		
		//Retorno
		return estrutura;
		
	}


}