<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "header.jsp" %>

<script src="script.js" charset="utf-8"></script>
<h2>코트예약조회</h2>
<form name="frm" method="POST" action="action2.jsp" onsubmit="return check2()">
	<table style="width: 40%;">
		<tr>
			<th>고객번호를 입력하시오.</th>
			<td style="text-align: left;">
				<input type="text" name="cust_no" autofocus>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="코트예약조회">
				<input type="button" value="홈으로" onclick="goHome()">
			</td>
		</tr>
	</table>
</form>


<%@ include file = "footer.jsp" %>