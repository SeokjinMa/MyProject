<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body><form action="UpdateOrder.jsp" method=post name="form">
<table border="1"><tr><td colspan="2"><h2>주문 정보 수정</h2></td></tr>
	<tr>
		<td> 날짜 </td>
		<td><input type="text" name="date" size="20" readonly
				value=${ods.getDate()}></td></tr>
	<tr>
		<td> 전화번호 </td>
		<td><input type="text" name="odrphone" 
				value=${ods.getOdrphone()}></td></tr>
	<tr>
		<td> 주소 </td>
		<td><input type="text" name="odradr" 
				value=${ods.getOdradr()}></td></tr>
	<tr>
		<td> 메뉴 </td>
		<td><input type="text" name="menu" 
				value=${ods.getMenu()}></td></tr>
	<tr>
		<td> 지불금액 </td>
		<td><input type="number" name="price" 
				value=${ods.getPrice()}></td></tr>
	<tr>
		<td> 지불수단 </td>
		<td><input type="number" name="pay" 
				value=${ods.getPay()}></td></tr>
	<tr><td colspan="2" align="center"><input type="submit" 
			value="수정하기"></td></tr>
</table>
</form>
</body>
</html>