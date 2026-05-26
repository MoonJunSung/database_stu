<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="db.jsp" %>
<%@ include file="header.jsp" %>
<% 
	String REGIST_CODE = request.getParameter("REGIST_CODE");
	String sql = "SELECT P.REGIST_CODE, P.NAME, "
					+" H.GAME_NUMBERS, H.APPEARANCE, H.HIT_NUMBERS, H.HOME_RUNS, "
					+" ROUND( ((HIT_NUMBERS+HOME_RUNS)/APPEARANCE * 100 + HOME_RUNS), 2) AS ATTACK, "
					+" H.PUT_OUT, H.DOUBLE_PLAY, H.ERROR_COUNT, "
					+" (PUT_OUT+(DOUBLE_PLAY*2) - (ERROR_COUNT*5)) AS DEFENCE "
					+" FROM TBL_HITTER_INFO H"
					+" JOIN TBL_PLAYER_INFO P ON P.REGIST_CODE=H.REGIST_CODE "
					+" WHERE TRIM(H.REGIST_CODE) = ?";
	PreparedStatement p = con.prepareStatement(sql);
	p.setString(1, REGIST_CODE);
	ResultSet rs = p.executeQuery();
	if(rs.next() ){
	%>
		<h2> 선수등록코드 : 성적 조회</h2>
		<table>
		<tr>
			<th>선수 등록 코드</th>
			<th>선수명</th>
			<th>게임수</th>
			<th>타석수</th>
			<th>안타수</th>
			<th>홈런수</th>
			<th>공격포인트</th>
			<th>아웃 카운트 수</th>
			<th>더블 플레이 수</th>
			<th>에러 수</th>
			<th>수비포인트</th>
		</tr>
		<tr>
			<%
			do{
				 %>
			<td><%=rs.getString("REGIST_CODE") %></td>
			<td><%=rs.getString("NAME") %></td>
			<td><%=rs.getString("GAME_NUMBERS") %></td>
			<td><%=rs.getString("APPEARANCE") %></td>
			<td><%=rs.getString("HIT_NUMBERS") %></td>
			<td><%=rs.getString("HOME_RUNS") %></td>
			<td><%=rs.getString("ATTACK") %></td>
			<td><%=rs.getString("PUT_OUT") %></td>
			<td><%=rs.getString("DOUBLE_PLAY") %></td>
			<td><%=rs.getString("ERROR_COUNT") %></td>
			<td><%=rs.getString("DEFENCE") %></td>
			<%
			}while(rs.next());
			 %>
		</tr>
		
		</table>
	<%
	}
	
	else{
		%>
		<h2>선수 등록 코드 : <%=REGIST_CODE %></h2>
		<%
	}
	rs.close();
	p.close();
	con.close();

%>
<div text>
	<input type="button" value="돌아가기" onclick="history.back()" >
</div>

<%@ include file="footer.jsp" %>
