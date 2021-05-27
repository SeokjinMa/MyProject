<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="mwp.FoodMenu" %>
<%@ page import="mwp.FoodDAO" %>
<%
	String menu = request.getParameter("menu");
	FoodDAO fdao = new FoodDAO();
	FoodMenu fdm = fdao.readDB(menu);
%>
<html>
<style>
	body,html{width:100%, height:100%};
	table{
		position:absolute; left:50%; top:50%;
		transform:translate(-50%, -50%);
		cellpadding:10px; width:300px; height:200px;
	}
</style>
<body>
<table border=1>
	<tr><td> 메뉴 이름 </td><th><%=fdm.getMenu() %></th></tr>
	<tr><td> 가격 </td><th><%=fdm.getFprice() %></th></tr>
	<tr><th colspan=2>
	<input type="button" value="정보수정" onclick="location.href=
		'idx_JspMenu.jsp?menu=<%=fdm.getMenu() %>&idx=UpdateMenuProcess'">
	<input type="button" value="정보삭제" onclick="location.href=
		'idx_JspMenu.jsp?menu=<%=fdm.getMenu() %>&idx=DeleteMenu'">
	</th></tr>
</table>
</body>
</html>