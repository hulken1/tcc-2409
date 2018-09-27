package br.com.arena21.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {

	//atributos para conexao
	private final String url ="jdbc:mysql://localhost:3306/arena21";
	private final String user = "root";
	private final String password = "";
	
	//Método para obter conexao
	public Connection obterConexao() {
		
		//varialve contendo a conexxao
		Connection conexao = null;
		
		//Selecionar o tipo de driver para conectar ao banco de dados
		try {
			Class.forName("com.mysql.jdbc.Driver");
		}catch(Exception erroDriver) {
			System.out.println("Falha ao selecionar o Driver de conexao");
		}
		
		//tentar realizar a conexao
		try {
			
			conexao = DriverManager.getConnection(url, user, password);

		}catch(SQLException erroSQL) {
			System.out.println("Falha ao conectar com a base de dados "+erroSQL.getMessage());
			throw new RuntimeException(erroSQL);
		}
		
		//retorno
		return conexao;
	}
}
