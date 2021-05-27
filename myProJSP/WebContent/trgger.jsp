<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="mwp.DBCon" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>일자별 작업목록</title>
</head>
<body>
<table border="1" cellpadding="3">
<tr>
<th>주문날짜</th><th>전화번호</th><th>주소</th><th>주문메뉴</th><th>가격</th><th>지불수단</th>
</tr>
<%
	Connection con = DBCon.getCon();
	String sql = "select * from backup_tbl";
	Statement stmt = con.createStatement();
	ResultSet rs = stmt.executeQuery(sql);
	
	while(rs.next()){
		out.print("<tr><td>"+rs.getString("odate")+"</td><td>"
				+rs.getString("odrphone")+"</td><td>"
				+rs.getString("odradr")+"</td><td>"
				+rs.getString("menu")+"</td><td>"
				+rs.getInt("oprice")+"</td><td>"
				+rs.getInt("opay")+"</td></tr>");
	}
%>
</table>
</body>
</html>