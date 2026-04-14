<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="db.jsp" %>
<%@include file="header.jsp" %>

<h2>강사매출현황</h2>
<table>
	<tr>
		<th>강사코드</th>
		<th>강사명</th>
		<th>강의명</th>
		<th>수강료</th>
	</tr>
<%
 	String sql="SELECT " 
		+"A.TEACHER_CODE, A.TEACHER_NAME, A.CLASS_NAME," 
		+"'\\ ' || TO_CHAR (SUM(C.TUITION), 'FM999,999') AS TUITION "
		+"FROM TBL_TEACHER_2504 A "
		+"JOIN TBL_CLASS_2504 C ON A.TEACHER_CODE=C.TEACHER_CODE "
		+"GROUP BY A.TEACHER_CODE, A.CLASS_NAME, A.TEACHER_NAME "
		+"ORDER BY A.TEACHER_CODE ASC";
	PreparedStatement p = con.prepareStatement(sql);
	ResultSet rs = p.executeQuery();
	while(rs.next()){

%>
	<tr>
		<td><%=rs.getString("TEACHER_CODE") %></td>
		<td><%=rs.getString("CLASS_NAME") %></td>
		<td><%=rs.getString("TEACHER_NAME") %></td>
		<td><%=rs.getString("TUITION") %></td>
	</tr>

<%
	}
	rs.close();
	p.close();
	con.close();
%>
</table>

<%@include file="footer.jsp" %>