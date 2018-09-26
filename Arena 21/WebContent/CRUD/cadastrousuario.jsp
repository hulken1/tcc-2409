<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    
    import="java.sql.*"
    
    %>
<%
        	
            try{          	
                String nome = request.getParameter("nome");
                String sobrenome = request.getParameter("sobrenome");
                String cpf = request.getParameter("cpf");
                String cidade = request.getParameter("cidade");
                String email = request.getParameter("email");
                String login = request.getParameter("login");
                String pass = request.getParameter("pass");
                String datanascimento = request.getParameter("datanascimento");
                String jogofavorito = request.getParameter("jogoFavorito");
                String dias = request.getParameter("diaS");
                String tardes = request.getParameter("tardeS");
                String noites = request.getParameter("noiteS");
                String finald = request.getParameter("finalD");
                String finalt = request.getParameter("finalT");
                String finaln = request.getParameter("finalN");
                String confirmarpass = request.getParameter("passconfirm");
                
                String DRIVER = "com.mysql.jdbc.Driver";
                Class.forName(DRIVER).newInstance();
                
        		Connection con = null;
        		Statement stmt = null;
        		
            	String sql = "INSERT INTO cadastrojogador(nome,sobrenome,cpf,cidade,email,login,pass,datanascimento,jogoFavorito,diaS,tardeS,noiteS,finalD,finalT,finalN,passconfirm) VALUES('"+nome+"','"+sobrenome+"','"+cpf+"','"+cidade+"','"+email+"','"+login+"','"+pass+"','"+datanascimento+"','"+jogofavorito+"','"+dias+"','"+tardes+"','"+noites+"','"+finald+"','"+finalt+"','"+finaln+"','"+confirmarpass+"')";
            	
            	
            	String url = "jdbc:mysql://localhost:3306/arena21";
            	String root = "root";
            	String pw = "";
            	con = DriverManager.getConnection(url,root,pw);
            	
            	stmt = con.createStatement();
            	stmt.execute(sql);
            	
            	
            }catch(Exception e){
            	out.print("Deu erro ao inserir"+e);
            }
    
 
        %>