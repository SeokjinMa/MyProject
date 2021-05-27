<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="mwp.CustDAO" %>
<%@ page import="mwp.CustInfo" %>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="cust" class="mwp.CustInfo" />
<jsp:setProperty property="*" name="cust" />
<%	
	

%>
<jsp:forward page="manageCust.jsp" />