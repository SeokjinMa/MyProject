<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="mwp.Orders" %>
<%@ page import="mwp.OrderDAO" %>
<%
	String odrphone = request.getParameter("odrphone");
	OrderDAO odao = new OrderDAO();
	odao.deleteDB(odrphone);
	request.setAttribute("target", "allOrders");
%>
<jsp:forward page="manageOrder.jsp" />