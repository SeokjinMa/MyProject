<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="mwp.CustInfo" %>
<%@ page import="mwp.CustDAO" %>
<%@ page import="java.util.*" %>
<% CustDAO cdao = new CustDAO();
	List<CustInfo> custlist = cdao.readAllDB();
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
	<tr><th>전화번호</th><th>고객주소</th></tr>
<% for(int i=0; i<custlist.size(); i++){
	CustInfo cust = (CustInfo)custlist.get(i);
	out.print("<tr><td>"+cust.getCustphone()+"</td>"
		+"<td>"+cust.getCustadr()+"</td></tr>");
	}	%>
</table>
</body>
</html>