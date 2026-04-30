<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="db.jsp" %>
<%@ include file="header.jsp" %>

<%
	request.setCharacterEncoding("UTF-8"); // 한글로 넘어오는 경우 꼭 써야함
	// 왼쪽은 DB 오른쪽은 jsp에서 넘어오는 NAME
	String cust_no = request.getParameter("cust_no");
	
%>

<%
	String sql = "select c.cust_no, a.cust_name,"
				+"TO_CHAR(TO_DATE(c.resv_date, 'YYYYMMDD'), 'YYYY\"년\"MM\"월 \"DD\"일\"') as resv_date, "
				+"c.court_no "
				+"from tbl_resv_202301 c "
				+"join TBL_CUST_202301 a on c.cust_no = a.cust_no "
				+"where c.cust_no = ?";
		PreparedStatement p = con.prepareStatement(sql);
		p.setString(1, cust_no);
		ResultSet rs = p.executeQuery();
		
		if(rs.isBeforeFirst()){ //sql 실행후 결과가 있는지 여부 확인
%>
			<h2>고객번호: <%= cust_no %>님의 코트예약 조회</h2>
			<table>
			<tr>
				<th>고객번호</th>
				<th>이름</th>
				<th>코트사용일자</th>
				<th>코트번호</th>
			</tr>
<%
			while(rs.next()){

%>			
	<tr>
		<td><%=rs.getString("cust_no") %></td>
		<td><%=rs.getString("cust_name") %></td>
		<td><%=rs.getString("resv_date") %></td>
		<td><%=rs.getString("court_no") %></td>
	</tr>
			
<%			
			}//while
		}//if
		else{
		%>
			<h2>코트 예약 정보가 존재하지 않습니다</h2>
		<%
		}
		rs.close();
		p.close();
		con.close();
%>
</table>
<div style="text-align: center; margin-top: 15px;">
<input type="button" value="돌아가기" onclick="location.href='courtResv.jsp';">
</div>

<%@ include file="footer.jsp" %>