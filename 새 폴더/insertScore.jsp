<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="header.jsp" %>
<%@ include file="db.jsp" %>
<script src="script.js"></script>
<h2>타자 성적 등록</h2>
<form name="frm" method="POST" action="insertScoreDB.jsp" onsubmit="return insertCheck()">
	<table>
		<tr>
			<th>타자선택</th>
			<td style="text-align: left;">
				<select name="REGIST_CODE" autofocus="autofocus">
					<option value="">타자 선택</option>
					<% 
					String sql = "SELECT REGIST_CODE, NAME FROM TBL_PLAYER_INFO";
					PreparedStatement p = con.prepareStatement(sql);
					ResultSet rs = p.executeQuery();
					while(rs.next()){
						String regiCode = rs.getString("REGIST_CODE");
						String name = rs.getString("NAME");
					%>
					<option value="<%=regiCode%>"> [<%=regiCode%>]<%=name %> </option>
					<% 
					}//while
					rs.close();
					p.close();
					con.close();
					%>
				</select>			
			</td>
		</tr>
		<tr>			
			<td colspan="2">공격 포인트</td>
		</tr>
		<tr>
			<th>게임 수</th>
			<td style="text-align: left;"> <input type="text" name="GAME_NUMBERS"> 게임</td>
		</tr>
		<tr>
			<th>타석 수</th>
			<td style="text-align: left;"> <input type="text" name="APPEARANCE"> 타수</td>
		</tr>
		<tr>
			<th>안타 수</th>
			<td style="text-align: left;"> <input type="text" name="HIT_NUMBERS"> 안타</td>
		</tr>
		<tr>
			<th>홈런 수</th>
			<td style="text-align: left;"> <input type="text" name="HOME_RUNS"> 홈런</td>
		</tr>
		<tr>
			<td colspan="2">수비 포인트</td>
		</tr>
		<tr>
			<th>아웃 카운트 수</th>
			<td style="text-align: left;"> <input type="text" name="PUT_OUT"> 회</td>
		</tr>
		<tr>
			<th>더블 플레이 수</th>
			<td style="text-align: left;"> <input type="text" name="DOUBLE_PLAY"> 회</td>
		</tr>
		<tr>
			<th>에러</th>
			<td style="text-align: left;"> <input type="text" name="ERROR_COUNT"> 회</td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="등록">
				<input type="button" value="다시쓰기" onclick="reset()">
			</td>
		</tr>
	</table>
</form>


<%@ include file="footer.jsp" %>