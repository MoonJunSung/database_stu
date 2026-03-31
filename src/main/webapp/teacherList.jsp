<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="db.jsp" %>
<%@ include file="header.jsp" %>
<h2>강사조회</h2>
<table>
	<tr>
		<th>강사코드</th>
		<th>강사명</th>
		<th>강의명</th>
		<th>수강료</th>
		<th>강사자격취득일</th>
	</tr>
<%
	String sql = "select ";
	sql += "TEACHER_CODE, TEACHER_NAME, CLASS_NAME, ";
	sql += "'\\ ' || TO_CHAR(CLASS_PRICE, 'FM999,999') AS CLASS_PRICE,";
	sql += "SUBSTR(TEACHER_RESIST_DATE,1,4) || '년' || " ;
	sql += "SUBSTR(TEACHER_RESIST_DATE,5,2) || '월' || " ;
	sql += "SUBSTR(TEACHER_RESIST_DATE,7,2) || '일' AS RESIST_DATE ";
	sql += " from TBL_TEACHER_2504";
	PreparedStatement p = con.prepareStatement(sql);
	ResultSet rs  = p.executeQuery();
	while(rs.next() ){
%>
	<tr>
		<td><%=rs.getString("TEACHER_CODE") %></td>
		<td><%=rs.getString("TEACHER_NAME") %></td>
		<td><%=rs.getString("CLASS_NAME") %></td>
		<td><%=rs.getString("CLASS_PRICE") %></td>
		<td><%=rs.getString("RESIST_DATE") %></td>
	</tr>
<%
	}//while
		rs.close();
		p.close();
		con.close();
%>
</table>

<%@ include file="footer.jsp" %>