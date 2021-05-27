<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
body,html{width:100%, height:100%};
table{position:absolute; left:50%; top:50%;
		transform:translate(-50%, -50%);}
</style>
<script>
function check(){
	if(!fm2.menu){
		alert('메뉴 이름을 입력하세요!')
		fm2.menu.focus();
		return false;
	}
	if(!fm2.fprice){
		alert('가격을 입력하세요!')
		fm2.fprice.focus();
		return false;
	}
}
</script>
</head>
<body>
<form action="menu.jsp" name="fm2" onsubmit="return check()">
	<table border="1" cellpadding=5>
		<tr>
			<td>메뉴 이름</td>
			<td><input type="text" name="menu" size=20/></td>
		</tr>
		<tr>
			<td>가격</td>
			<td><input type="number" name="fprice" size=6/></td>
		</tr>
		<tr>
			<td colspan="2" align=center>
					<button type="submit">등록</button>
					<button type="reset">취소</button>
			</td>
		</tr>
	</table>
</form>
</body>
</html>