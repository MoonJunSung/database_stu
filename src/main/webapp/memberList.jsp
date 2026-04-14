<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="db.jsp" %>
<%@include file="header.jsp" %>

<h2>회원정보조회</h2>
<table>
	<tr>
		<th>수강월</th>
		<th>회원번호</th>
		<th>회원명</th>
		<th>강의명</th>
		<th>강의장소</th>
		<th>수강료</th>
		<th>등급</th>
	</tr>
<%
	String sql="SELECT "
		+ "SUBSTR(C.RESIST_MONTH, 1, 4) || '년' || "
		+ "SUBSTR(C.RESIST_MONTH, 5, 2) || '월' AS RESIST_MONTH,"
		+ "C.C_NO, B.C_NAME, A.CLASS_NAME, C.CLASS_AREA,"
		+ "'\\ ' || TO_CHAR (C.TUITION, 'FM999,999') AS TUITION, B.GRADE "
		+ "FROM TBL_CLASS_2504 C "
		+ "JOIN TBL_MEMBER_2504 B ON C.C_NO = B.C_NO "
		+ "JOIN TBL_TEACHER_2504 A ON A.TEACHER_CODE = C.TEACHER_CODE";

	PreparedStatement p = con.prepareStatement(sql);
	ResultSet rs = p.executeQuery();
	while(rs.next()){
%>
	<tr>
		<td><%=rs.getString("RESIST_MONTH") %></td>
		<td><%=rs.getString("C_NO") %></td>
		<td><%=rs.getString("C_NAME") %></td>
		<td><%=rs.getString("CLASS_NAME") %></td>
		<td><%=rs.getString("CLASS_AREA") %></td>
		<td><%=rs.getString("TUITION") %></td>
		<td><%=rs.getString("GRADE") %></td>
	</tr>

<%
	}
	rs.close();
	p.close();
	con.close();
%>
</table>

<%@include file="footer.jsp" %>