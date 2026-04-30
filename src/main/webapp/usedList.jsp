<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="db.jsp" %>
<%@ include file="header.jsp" %>

<h2>사용일수집계</h2>

<table>
	<tr>
		<th>고객번호</th>
		<th>이름</th>
		<th>사용일수</th>
	</tr>
	<%
		String sql = "select "
			+ "c.cust_no,a.cust_name,"
			+ "count(c.cust_no) as used "
			+ "from tbl_resv_202301 c "
			+ "join tbl_cust_202301 a on a.cust_no = c.cust_no "
			+ "group by c.cust_no, a.cust_name "	
			+ "order by c.cust_no asc";
		PreparedStatement p = con.prepareStatement(sql);
		ResultSet rs = p.executeQuery();
		while(rs.next()){
	%>
	<tr>
		<td><%=rs.getString("CUST_NO") %></td>
		<td><%=rs.getString("CUST_NAME") %></td>
		<td><%=rs.getString("USED") %></td>
	</tr>
	<%
		} // end-while
		rs.close();
		p.close();
		con.close();
	%>
	
</table>

<%@ include file = "footer.jsp" %>