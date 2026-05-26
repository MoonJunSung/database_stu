<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<script src="script.js"></script>
<h2>개별 타자 성적 조회</h2>
<form name="frm" method="post" action="menu2DB.jsp" onsubmit="return menu2Check()">
	<table>
		<tr>
			<th>선수 등록 코드를 입력 하시오.</th>
			<td>
				<input type="text" name="REGIST_CODE" autofocus="autofocus">
			</td>
		</tr>
		<tr>
			<td colspan=2>
				<input type="submit" value="선수조회">
				<input type="button" value="홈으로" onclick="location.href='index.jsp' " >
			</td>
		</tr>
	</table>
</form>

<%@ include file="footer.jsp" %>