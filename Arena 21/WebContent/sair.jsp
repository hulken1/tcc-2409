<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
	//Excluir a se��o usuario
	session.setAttribute("usuario", null);

	//redirecionamento
	response.sendRedirect("index.jsp");

%>