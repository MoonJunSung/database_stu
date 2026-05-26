<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<%@ include file="db.jsp"%>
<script src="script.js" charset="UTF-8"></script>
<h2>차량입차</h2>
<form name="frm" action="enterDB.jsp" method="POST" onsubmit="return check()">
	<table>
		<tr>
			<th>차랑번호</th>
			<td style="text-align: left;">
				<input type="text" name="CAR_NUMBER" autofocus>예) 22가1111
			</td>
		</tr>
		<tr>
			<th>소유자이름</th>
			<td style="text-align: left;">
				<input type="text" name="OWNER_NAME">예) 백선수
			</td>
		</tr>
		<tr>
			<th>주차위치선택</th>
			<td style="text-align: left;">
					<input type="radio" name="LOCATION" value="A001">A001
					<input type="radio" name="LOCATION" value="A002">A002
					<input type="radio" name="LOCATION" value="A003">A003
					<input type="radio" name="LOCATION" value="A004">A004
					<input type="radio" name="LOCATION" value="A005">A005
			</td>
		</tr>
		<tr>
			<th>입차시간</th>
			<td style="text-align: left;">
				<input type="text" name="ENTRANCE_TIME">예) 22:22
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="입차등록">
				<input type="button" value="다시쓰기" onclick="resetForm()">
			</td>
		</tr>
	</table>
</form>
<%@ include file="footer.jsp"%>