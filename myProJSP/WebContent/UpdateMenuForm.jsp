<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body><form action="UpdateMenu.jsp" method=post name="form">
<table border="1"><tr><td colspan="2"><h2>메뉴 정보 수정</h2></td></tr>
	<tr>
		<td> 메뉴 이름 </td>
		<td><input type="text" name="menu" size="20" 
				value=${fdm.getMenu()}></td></tr>
	<tr>
		<td> 가격 </td>
		<td><input type="number" name="fprice" size="6"
				value=${fdm.getFprice()}></td></tr>
	<tr><td colspan="2" align="center"><input type="submit" 
			value="수정하기"></td></tr>
</table>
</form>
</body>
</html>