<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="mwp.OrderDAO" %>
<%@ page import="mwp.Orders" %>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="ods" class="mwp.Orders" />
<jsp:setProperty property="*" name="ods" />
<%	
	String date_y = request.getParameter("date_y");
	String date_m = request.getParameter("date_m");
	String date_d = request.getParameter("date_d");
	ods.setDate(date_y+"-"+date_m+"-"+date_d);
	
	String firstnum = request.getParameter("firstnum");
	String midnum = request.getParameter("midnum");
	String lastnum = request.getParameter("lastnum");
	ods.setOdrphone(firstnum+"-"+midnum+"-"+lastnum);
	
	String[] menulist = request.getParameterValues("menu");
	String menu = "";
	for(int i=0; i<menulist.length; i++) {
		menu += menulist[i] + " ";
	}
	ods.setMenu(menu);
	OrderDAO odao = new OrderDAO();
	odao.insertDB(ods);
	request.setAttribute("phone", ods.getOdrphone());
	request.setAttribute("target", "order_result");
%>
<jsp:forward page="manageOrder.jsp" />