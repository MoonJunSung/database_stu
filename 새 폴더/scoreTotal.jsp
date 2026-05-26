<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<%@ include file="db.jsp" %>
<H2>전체 타자 성적 조회</H2>
<table>
	<tr>
		<th>선수 등록 코드</th>
		<th>선수명</th>
		<th>생년월일</th>
		<th>키</th>
		<th>몸무게</th>
		<th>소속</th>
		<th>선수 등급</th>
		<th>순위</th>
	</tr>
	
	<%
		String sql ="SELECT REGIST_CODE, NAME,BIRTH_DAY,HEIGHT,WEIGHT, "
				   +" CASE "
				   +" WHEN SCORE >= 90 THEN 'A' "
				   +" WHEN SCORE >= 80 THEN 'B' "
				   +" WHEN SCORE >= 70 THEN 'C' "
				   +" WHEN SCORE >= 60 THEN 'D' "
				   +" ELSE 'E' "
				   +" END AS GRADE, "
				   +" RANK() OVER(ORDER BY SCORE DESC) AS RANK "
			       +" FROM ( SELECT P.REGIST_CODE, P.NAME, P.BIRTH_DAY, P.HEIGHT, P.WEIGHT, "
				   +" (ROUND((((HIT_NUMBERS+HOME_RUNS)/APPEARANCE)*100) + HOME_RUNS, 2) + "
				   +" (PUT_OUT+(DOUBLE_PLAY*2)-(ERROR_COUNT*5))) / 2 AS SCORE "
				   +" FROM TBL_PLAYER_INFO P "
				   +" JOIN TBL_HITTER_INFO H ON H.REGIST_CODE = P.REGIST_CODE)";
						
		PreparedStatement p = con.prepareStatement(sql);
		ResultSet rs = p.executeQuery();
		while(rs.next()){
			String REGIST_CODE = rs.getString("REGIST_CODE");
			String NAME = rs.getString("NAME");
			String BIRTH_DAY = rs.getString("BIRTH_DAY");
			String HEIGHT = rs.getString("HEIGHT");
			String WEIGHT = rs.getString("WEIGHT");
			String GRADE = rs.getString("GRADE");
			String RANK = rs.getString("RANK"); 
			String MEMBER;
			if(REGIST_CODE.charAt(0)=='A') MEMBER="1군";
			else MEMBER="2군";
			
			BIRTH_DAY = BIRTH_DAY.substring(0,4) +"년" +BIRTH_DAY.substring(4,6) +"월"
					    + BIRTH_DAY.substring(6,8) +"일";
	%>
	<tr>	
	<td><%=REGIST_CODE %></td>
	<td><%=NAME %></td>
	<td><%=BIRTH_DAY %></td>
	<td><%=HEIGHT %></td>
	<td style="text-align: right;"><%=WEIGHT %></td>
	<td style="text-align: right;"><%=MEMBER %></td>
	<td><%=GRADE %></td>
	<td><%=RANK %></td>		
	</tr>
	<%
		}//while
		rs.close();
		p.close();
		con.close();
	%>
	
	
</table>


<%@ include file="footer.jsp" %>