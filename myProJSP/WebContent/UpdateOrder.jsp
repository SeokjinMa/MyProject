<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="mwp.Orders" %>
<%@ page import="mwp.OrderDAO" %>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="ods" class="mwp.Orders" />
<jsp:setProperty property="*" name="ods" />
<%
	OrderDAO odao = new OrderDAO();
	odao.dbUpdate(ods);
	request.setAttribute("target","allOrders");
%>
<jsp:forward page="manageOrder.jsp" />