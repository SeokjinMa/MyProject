<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
html, body{width: 100%; height: 100%;}
table{position:absolute; left:50%; top:50%;
	transform:translate(-50%, -50%);
}
#circle1 {
background-color:#17AD8F; width:180px; height:180px;
border-radius:90px;
font-size:30px; color:white;}
#circle2 {
background-color:#17AD8F; width:180px; height:180px;
border-radius:90px;
font-size:30px; color:white;}
#circle3 {
background-color:#17AD8F; width:180px; height:180px;
border-radius:90px; 
font-size:30px; color:white;}
#circle1:hover{background:orange;}
#circle2:hover{background:orange;}
#circle3:hover{background:orange;}
a:link{text-decoration:none; color:white;}
a:visited{color:white; text-decoration:none;}
</style>
</head>
<body>
<table>
<tr>
<th id="circle1"><a href="idx_JspOds.jsp?idx=orderForm" style="display:block; 
width:100%; height:100%; text-decoration:none; padding-top:55%;">
주문<br>관리</a></th>
<th id="circle2"><a href="idx_JspMenu.jsp?idx=newMenu" style="display:block; 
width:100%; height:100%; text-decoration:none; padding-top:55%;">
메뉴<br>관리</a></th>
<th id="circle3"><a href="idx_JspCust.jsp?idx=searchCust" style="display:block; 
width:100%; height:100%; text-decoration:none; padding-top:55%;">
고객<br>관리</a></th>
</tr>
</table>
</body>
</html>