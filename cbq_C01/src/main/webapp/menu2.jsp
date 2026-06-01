<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<%@ include file="db.jsp" %>
<script src="script.js"></script>
<h2>학생정보현황</h2>
<form name="frm" method="POST" action="menu2DB.jsp" onsubmit="return 2Check()">
<table>
	<tr>
		<th>학번</th>
		<td style="text-align: left;"> <input type="text" name="STUID" autofocus="autofocus"> </td>
	</tr>
	<tr>
			<th>교과코드</th>
				<td>
					<select name="SNAME">
						<option value=""></option>
					</select>
				</td>
		</tr>
	<tr>
		<th>중간</th>
		<td><input type="text" name="MIDSCORE"> </td>
	</tr>
	<tr>
		<th>기말</th>
		<td><input type="text" name="FINALSCORE"> </td>
	</tr>
	<tr>
		<th>출석</th>
		<td><input type="text" name="ATTEND"> </td>
	</tr>
	<tr>
		<th>레포트</th>
		<td><input type="text" name="REPORT"> </td>
	</tr>
	<tr>
		<th>기타</th>
		<td><input type="text" name="ETC"> </td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="submit" value="등록">
			<input type="button" value="취소" onclick="reset()">
		</td>
	</tr>
</table>
</form>

<%@ include file="footer.jsp" %>