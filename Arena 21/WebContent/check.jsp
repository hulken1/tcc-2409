<%@page import="br.com.arena21.login.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"    
    %>
<%
User us = new User();
String login = request.getParameter("login");
String pass = request.getParameter("pass");
boolean status = us.verificarUsuario(login,pass);

if(us.result== true){
	out.println("Login realizado com sucesso" + us.nome);
	
}else{
	out.println("login ou senha invalidos");
}

%>

