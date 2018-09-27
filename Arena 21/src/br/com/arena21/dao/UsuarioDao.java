package br.com.arena21.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import br.com.arena21.bean.UsuarioBean;
import br.com.arena21.connection.ConnectionFactory;

public class UsuarioDao {
	Connection conexao;
	
	//Construtor
	public UsuarioDao() {
		this.conexao = new ConnectionFactory().obterConexao();

}

	//Método para realizar o login
		public UsuarioBean login(UsuarioBean ub) {
			
			//Objeto UsuarioBean
			UsuarioBean obj = new UsuarioBean();
			
			//SQL
			String sql = "SELECT * FROM cadastrojogador WHERE login =? AND pass =?";
			
			//Tentar obter os dados do banco de dados
			try {
				
				
				//Preparar a conexao
				PreparedStatement pstmt = this.conexao.prepareStatement(sql);

				//parametros do sql
				pstmt.setString(1, ub.getLogin());
				pstmt.setString(2, ub.getPass());
				
				//armazenar os resultados do comando sql 
				ResultSet rs = pstmt.executeQuery();
				
				while(rs.next()) {
					obj.setIdJogador(rs.getInt(1));
					obj.setNome(rs.getString(2));
					obj.setSobrenome(rs.getString(3));
					obj.setCpf(rs.getString(4));
					obj.setCidade(rs.getString(5));
					obj.setEmail(rs.getString(6));
					obj.setLogin(rs.getString(7));
					obj.setPass(rs.getString(8));
					obj.setDatanascimento(rs.getDate(9));
					obj.setJogoFavorito(rs.getString(10));
					
					
				}
				
			}catch(Exception e) {
				System.out.println("Falha ao obter os dados "+e.getMessage());
			}
			
			//Retorno
			return obj;
		}
		}
