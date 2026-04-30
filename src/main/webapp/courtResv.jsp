<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "header.jsp" %>

<script src="script.js" charset="utf-8"></script>
<h2>코트예약</h2>
<!-- 버튼을 눌러서 연동(action)되기 위한 태그 -->
<form name="frm" method="POST" action="action.jsp" onsubmit="return check()">
	<table>
		<tr>
			<th>예약번호</th>
			<td style="text-align: left;">
				<input type="text" name="resv_no" autofocus>예)20230001
			</td>
		</tr>
		<tr>
			<th>고객번호</th>
			<td style="text-align: left;">
				<input type="text" name="cust_no">예)1001
			</td>
		</tr>
		<tr>
			<th>예약일자</th>
			<td style="text-align: left;">
				<input type="text" name="resv_date">예)20230101
			</td>
		</tr>
		<tr>
			<th>코드번호</th>
			<td style="text-align: left;">
				<input type="text" name="court_no">예)C001~C009
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="예약등록">
				<input type="button" value="다시쓰기" onclick="resetForm()">
			</td>
		</tr>
	</table>
</form>


<%@ include file = "footer.jsp" %>