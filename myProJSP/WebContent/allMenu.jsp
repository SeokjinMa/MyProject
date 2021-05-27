<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="mwp.FoodMenu" %>
<%@ page import="mwp.FoodDAO" %>
<%@ page import="java.util.*" %>
<% FoodDAO fdao = new FoodDAO();
	List<FoodMenu> menulist = fdao.readAllDB();
%>
<html>
<style>
	body,html{width:100%, height:100%};
	table{
		position:absolute; left:50%; top:50%;
		transform:translate(-50%, -50%);
		cellpadding:10px; width:600px;
	}
	th{background-color:rgba(33,33,33,.2);}
	td:nth-child(2n){background-color:rgba(99,99,99,.2); text-align:center;}
	td:nth-child(2n-1){background-color:rgba(00,57,66,.2); text-align:center;}
</style>
<body>
<table>
	<tr><th>메뉴 이름</th><th>가격</th></tr>
<% for(int i=0; i<menulist.size(); i++){
	FoodMenu fdm = (FoodMenu)menulist.get(i);
	out.print("<tr><td><a href='idx_JspMenu.jsp?menu="+fdm.getMenu()
		+"&idx=foodItem'>"+fdm.getMenu()+"</a></td>"
		+"<td>"+fdm.getFprice()+"</td></tr>");
	}	%>
</table>
</body>
</html>