<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
<style>
*{box-sizing: border-box;}

#container{height: 500px;}
#header{height: 15%;}
#content, #side{height: 65%;}
#footer, #menu{height: 10%;}

#header{background: dimgray; color:white;}
#menu{background: #333; color:white;}
#content{background: ghostwhite; float:left; width:90%; text-align:center;}
#side{background: Gainsboro; float:left; width:10%;}
#footer{background: darkgray;}

#menu a{display: block; color: white;}

ul{background: lightgray; padding: 0px; margin: 0;}
li a{color: black; text-decoration: none; padding: 10px 20px;
   display:inline-block;}
li a:hover{background: darkgray; color: black;}
li.dropdown{display:inline-block;}

.submenu{display: none; position: absolute;
      background-color:gray; boxshadow: 0px 8px 16px 0px rgba(0,0,0,0.8);}   
.submenu a{display: block; color: black; padding: 12px 16px;
      text-decoration: none; text-align: left;}   
.submenu a:hover{background: lavender; color: black;}
.dropdown:hover .submenu{display:block; color: black;}
#side li{display:block; padding:5px;}
#footer{clear:both;}
li{list-style-position:inside;}
#header{position:relative;}
#title{position:absolute; left:50%; top:50%;
   transform:translate(-50%, -50%);}
#f1{margin: 0px 0px; padding: 0px 0px; border: 0px;
   float:right; width: 100%; height: 100%;}
#header, #side, #footer{text-align:center;}
a{text-decoration:none; color:white;}
a:visited{color:white;}
</style>
</head>

<body>
<div id="container">
<div id="header"><div id="title"><h2>주문 관리 프로그램</h2></div></div>
<ul id="menu">
   <li class="dropdown">
      <a href="idx_JspOds.jsp?idx=orderForm">주문 관리</a>
      <div class="submenu">
         <a href="idx_JspOds.jsp?idx=orderForm">주문 추가</a>
         <a href="idx_JspOds.jsp?idx=allOrders">주문 내역</a>
      </div>
   </li>
   <li class="dropdown">
      <a href="idx_JspMenu.jsp?idx=newMenu">메뉴 관리</a>
      <div class="submenu">
         <a href="idx_JspMenu.jsp?idx=newMenu">메뉴 추가</a>
         <a href="idx_JspMenu.jsp?idx=allMenu">메뉴 수정</a>
      </div>
   </li>
   <li class="dropdown">
      <a href="idx_JspCust.jsp?idx=searchCust">고객 관리</a>
      <div class="submenu">
         <a href="idx_JspCust.jsp?idx=searchCust">고객 검색</a>
         <a href="idx_JspCust.jsp?idx=allCust">전체 고객</a>
      </div>
   </li>
</ul>
<div id="content">
	<jsp:include page="${target}.jsp"/>
</div>
<div id="side">ad</div>
<div id="footer">
<a href="./index.jsp">메인으로</a></div>
</div>
</body>
</html>