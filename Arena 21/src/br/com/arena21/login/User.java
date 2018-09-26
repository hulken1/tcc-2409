package br.com.arena21.login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class User {
	public Connection connectarBD() {
		Connection con = null;
		try {
			Class.forName("com.mysql.Driver.Manager").newInstance();
			String url = "jdbc:mysql://localhost:3306/arena21";
        	String root = "root";
        	String pw = "";
        	con = DriverManager.getConnection(url,root,pw);
			
		}catch(Exception e) {		}
		return con;}
	public String nome="";
	public boolean result = false;
	public boolean verificarUsuario(String login , String pass) {
		String sql = "";
		Connection con = connectarBD();
		//Instrucao sql
		sql += "SELECT nome from cadastrojogador";
		sql += "where login = " + "'" + login + "'";
		sql += "and pass = " + "'" + pass + "';";
		
		try {
			Statement str = con.createStatement();
			ResultSet rs = str.executeQuery(sql);
			if(rs.next()) {
				result = true;
				nome = rs.getString("nome");
			}
		}catch(Exception e) {}
		return result;
	}
		
		
		
	}

