package br.com.arena21.connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexao {

	//M�todo para retornar a conex�o
	public static Connection obterConexao(){
		
		//Vari�vel contendo a conex�o
		Connection conexao = null;
		
		//Tentar obter a conex�o
		try{
			Class.forName("com.mysql.jdbc.Driver");
			conexao = DriverManager.getConnection("jdbc:mysql://localhost/tcc","root","");
		}catch (Exception e) {
			System.out.println("FODEU "+e.getMessage());
		}
		
		//Retorno
		return conexao;
		
	}
	
}
