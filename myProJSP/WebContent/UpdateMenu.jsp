<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="mwp.FoodMenu" %>
<%@ page import="mwp.FoodDAO" %>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="fdm" class="mwp.FoodMenu" />
<jsp:setProperty property="*" name="fdm" />
<%
	FoodDAO fdao = new FoodDAO();
	fdao.dbUpdate(fdm);
	request.setAttribute("target","allMenu");
%>
<jsp:forward page="manageMenu.jsp" />