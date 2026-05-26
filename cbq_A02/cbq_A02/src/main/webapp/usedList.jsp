<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file='db.jsp' %>
<%@ include file='header.jsp' %>
<h2>사용일수집계</h2>
<table>
	<tr>
		<th>고객번호</th>
		<th>이름</th>
		<th>사용일수</th>
	</tr>
<%
	String sql = "SELECT R.CUST_NO,C.CUST_NAME,"
				+"COUNT(R.RESV_NO) AS USED "
				+"FROM TBL_RESV_202301 R "
				+"JOIN TBL_CUST_202301 C ON C.CUST_NO=R.CUST_NO "
				+"GROUP BY R.CUST_NO, C.CUST_NAME "
				+"ORDER BY R.CUST_NO ASC";
	PreparedStatement p = con.prepareStatement(sql);
	ResultSet rs = p.executeQuery();
	while(rs.next()){
%>
	<tr>
		<td> <%=rs.getString("CUST_NO") %> </td>
		<td> <%=rs.getString("CUST_NAME") %> </td>
		<td> <%=rs.getString("USED") %> </td>
	</tr>


<%
	}
	rs.close();
	p.close();
	con.close();
%>
</table>
<%@ include file='footer.jsp' %>