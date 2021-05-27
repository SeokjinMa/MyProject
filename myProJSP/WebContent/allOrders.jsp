<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="mwp.Orders" %>
<%@ page import="mwp.OrderDAO" %>
<%@ page import="java.util.*" %>
<% OrderDAO odao = new OrderDAO();
	List<Orders> odslist = odao.readAllDB();
%>
<html>
<head>
<style>
	body,html{width:100%,height:100%};
	table{
		position:absolute; left:50%; top:50%;
		transform:translate(-50%, -50%);}
	th{background-color:rgba(33,33,33,.2);}
	td:nth-child(2n){background-color:rgba(99,99,99,.2); text-align:center;}
	td:nth-child(2n-1){background-color:rgba(00,57,66,.2); text-align:center;}
</style>
</head>
<body>
<table cellpadding="5">
	<tr>
		<th>날짜</th><th>전화번호</th><th>주소</th><th>주문메뉴</th><th>가격</th><th>지불수단
	</tr>
<% for(int i=0; i<odslist.size(); i++){
	Orders ods = (Orders)odslist.get(i);
	
	out.print("<tr><td>"+ods.getDate()+"</td>"
		+"<td><a href='idx_JspOds.jsp?odrphone="+ods.getOdrphone()
		+"&idx=odsItem'>"+ods.getOdrphone()+"</a></td>"
		+"<td>"+ods.getOdradr()+"</td>"
		+"<td>"+ods.getMenu()+"</td>"
		+"<td>"+ods.getPrice()+"</td>"
		+"<td>"+ods.getPay()+"</td></tr>");
	}	%>
</table>
</body>
</html>