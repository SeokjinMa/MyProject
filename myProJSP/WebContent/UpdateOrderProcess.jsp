<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="mwp.Orders" %>
<%@ page import="mwp.OrderDAO" %>
<%
	String odrphone = request.getParameter("odrphone");
	
	OrderDAO odao = new OrderDAO();
	Orders ods = odao.readDB(odrphone);
	request.setAttribute("ods",ods);
	request.setAttribute("target","UpdateOrderForm");
%>
<jsp:forward page="manageOrder.jsp" />