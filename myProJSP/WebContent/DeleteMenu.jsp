<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="mwp.FoodMenu" %>
<%@ page import="mwp.FoodDAO" %>
<%
	String menu = request.getParameter("menu");
	FoodDAO fdao = new FoodDAO();
	fdao.deleteDB(menu);
	request.setAttribute("target", "allMenu");
%>
<jsp:forward page="manageMenu.jsp" />