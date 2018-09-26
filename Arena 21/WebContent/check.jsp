
<%@ page import ="java.sql.*" %>
<%
    try{
        String login = request.getParameter("login");   
        String senha = request.getParameter("pass");
        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/arena21?" + "user=root&password=");    
        PreparedStatement pst = conn.prepareStatement("Select login,pass from cadastrojogador where login=? and pass=?");
        pst.setString(1, login);
        pst.setString(2, senha);
        ResultSet rs = pst.executeQuery();                        
        if(rs.next())           
        	response.sendRedirect("poslogin.jsp");      
        else
           out.println("Invalid login credentials");            
   }
   catch(Exception e){       
       out.println("Something went wrong !! Please try again");       
   }     

%>