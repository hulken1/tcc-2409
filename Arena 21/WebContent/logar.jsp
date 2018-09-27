<%@page import="br.com.arena21.dao.UsuarioDao"%>
<%@page import="br.com.arena21.bean.UsuarioBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	//Obter o e-mail e a senha
	String login = request.getParameter("login");
	String pass = request.getParameter("pass");
	
	//Instanciar um objeto Bean
	UsuarioBean ub = new UsuarioBean();
	ub.setLogin(login);
	ub.setPass(pass);
	
	//Intanciar um objeto da classe UsuarioDao
	UsuarioDao ud = new UsuarioDao();
	
	//Obter os dados do usuÃ¡rio
	ub = ud.login(ub);
	
	//Redirecionamento
	if(ub.getIdJogador() != 0){
		
		//Criar a sessÃ£o
		session.setAttribute("sessaoUsuario", ub);
		response.sendRedirect("poslogin.jsp");   
		
	}else{
		response.sendRedirect("index.jsp?msg=falhaLogin");
	}
	
%>