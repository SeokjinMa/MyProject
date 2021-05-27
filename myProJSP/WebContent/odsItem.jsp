<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="mwp.Orders" %>
<%@ page import="mwp.OrderDAO" %>
<%
	String odrphone = request.getParameter("odrphone");
	OrderDAO odao = new OrderDAO();
	Orders ods = odao.readDB(odrphone);
%>
<style>
	body,html{width:100%, height:100%}
	table{
		position:absolute; left:50%; top:50%;
		transform:translate(-50%, -50%);
		cellpadding:10px; width:300px; height:200px;
	}
</style>
<table border=1>
	<tr><td> 날짜 </td><th><%=ods.getDate() %></th></tr>
	<tr><td> 전화번호 </td><th><%=ods.getOdrphone() %></th></tr>
	<tr><td> 주소 </td><th><%=ods.getOdradr() %></th></tr>
	<tr><td> 메뉴 </td><th><%=ods.getMenu() %></th></tr>
	<tr><td> 가격 </td><th><%=ods.getPrice() %></th></tr>
	<tr><td> 지불수단 </td><th>
	<% if(ods.getPay()==1)
		out.print("카드");
	else
		out.print("현금");
%>
	<tr><th colspan=2>
	<input type="button" value="정보수정" onclick="location.href=
		'idx_JspOds.jsp?odrphone=<%=ods.getOdrphone() %>&idx=UpdateOrderProcess'">
	<input type="button" value="정보삭제" onclick="location.href=
		'idx_JspOds.jsp?odrphone=<%=ods.getOdrphone() %>&idx=DeleteOrder'">
	</th></tr>
</table>