<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@ page import = "mwp.DBCon" %>
<%
	try{
		Connection con = DBCon.getCon();
		out.println("연결 성공<br>");
		DBCon.close(con, null, null);
	} catch(Exception e) {
		out.println("연결 실패<br>");
	}
%>