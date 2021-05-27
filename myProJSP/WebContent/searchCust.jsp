<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
body,html{width:100%, height:100%};
table{position:absolute; left:70%; top:50%;
	transform:translate(-50%, -50%); align:center;}
</style>
</head>
<body>
<form action="seaarchCustResult" name="fm">
<h3> 정보를 검색할 고객의 전화번호를 입력해주세요 </h3>
<table>
	<tr>
		<td>전화번호</td>
		<td><input type="text" name="searchPhone">
			<button type="submit">검색</button>
		</td>
	</tr>
</table>
</form>
</body>
</html>