<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="mwp.FoodDAO" %>
<%@ page import="mwp.FoodMenu" %>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="fdm" class="mwp.FoodMenu" />
<jsp:setProperty property="*" name="fdm" />
<%
	FoodDAO fdao = new FoodDAO();
	fdao.insertDB(fdm);
	request.setAttribute("menu", fdm.getMenu());
	request.setAttribute("target", "newMenuResult");
%>
<jsp:forward page="manageMenu.jsp" />