<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="mwp.CustInfo" %>
<%@ page import="mwp.CustDAO" %>
<%
	String phone = request.getParameter("custphone");
	CustDAO cdao = new CustDAO();
	CustInfo cust = cdao.readDB(phone);
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
	<tr><td width=80> 전화번호 </td><th><%=cust.getCustphone() %></th></tr>
	<tr><td> 주소 </td><th><%=cust.getCustadr() %></th></tr>
	<tr><th colspan=2>
	<input type="button" value="정보수정" onclick="location.href=
		'idx_Jsp.jsp?custphone=<%=cust.getCustphone() %>&idx=joinUpdateProcess'">
	<input type="button" value="정보삭제" onclick="location.href=
		'idx_Jsp.jsp?custphone=<%=cust.getCustphone() %>&idx=joindelete'">
	</th></tr>
</table>