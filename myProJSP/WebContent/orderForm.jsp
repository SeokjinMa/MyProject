<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
	<head>
		<meta charset="utf-8" />
		<style>
			body,html{width:100%, height:100%};  
			table{position:absolute; left:50%; top:50%;
			transform:translate(-50%, -50%);}
</style>
<script>
function oncheck(){
	if(!fm.midnum.value){
		alert('중간번호를 입력하세요!')
		fm.midnum.focus();
		return false;
	}
	if(!fm.lastnum.value){
		alert('마지막번호를 입력하세요!')
		fm.lastnum.focus();
		return false;
	}
	if(!fm.price.value){
		alert('가격울 입력하세요!')
		fm.price.focus();
		return false;
	}
	if(!fm.pay.value){
		alert('결제수단을 입력하세요!')
		fm.pay.focus();
		return false;
	}
}
</script>
</head>
<body>
<form action="newOrder.jsp" name="fm" onsubmit="return oncheck()">
<table border="1" cellpadding="5">
 	<tr>
		<td>날짜</td>
		<td><input type="text" name="date_y" size=4 maxlength=4>년
			<input type="text" name="date_m" size=2 maxlength=2>월
			<input type="text" name="date_d" size=2 maxlength=2>일</td>
	</tr>
	<tr>
		<td>전화번호 </td>
		<td>
			<select name="firstnum">
				<option value="대구">053</option>
				<option value="010" selected>010</option>
				<option value="011">011</option>
				<option value="011">012</option>
			</select>
			-<input type="text" name="midnum" size=4 maxlength=4/>
			-<input type="text" name="lastnum" size=4 maxlength=4/>
		</td>
	</tr>
	<tr>
		<td>주소</td> 
		<td><input type="text" name="odradr"/></td>
	</tr>
	<tr>
		<td>메뉴 </td>
		<td>
			<select name="menu">
				<option value="불고기피자" selected>불고기피자</option>
				<option value="쉬림프피자">쉬림프피자</option>
				<option value="치즈피자">치즈피자</option>
				<option value="페퍼로니피자">페퍼로니피자</option>
				<option value="핫치킨피자">핫치킨피자</option>
				<option value="콤비네이션피자">콤비네이션피자</option>
				<option value="고구마피자">고구마피자</option>
				<option value="포테이토피자">포테이토피자</option>
			</select></td>
	</tr>
	<tr>
		<td>금액 </td>
		<td><input type="number" name="price" size=7 maxlength=7/></td>
	</tr>
	<tr>
		<td>결제수단 </td>
		<td><input type="number" name="pay" size=1/></td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<button type="submit">등록하기</button>
			<button type="reset">취소하기</button>
		</td>
	</tr>
</table>
</form>
</body>
</html>
