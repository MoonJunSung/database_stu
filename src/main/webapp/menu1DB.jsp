<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="db.jsp" %>

<table>
	<tr>
		<th>학번</th>
		<th>이름</th>
		<th>주민번호</th>
		<th>학과명</th>
		<th>성별</th>
		<th>전화번호</th>
		<th>이메일</th>
	</tr>
<%
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	try{
		String sql = "select stuid, sname, substr(jumin, 1, 6) || '-' || substr(jumin, 7, 7) as jumin, dept_name, decode(substr(jumin, 7, 1), '3', '남자', '4', '여자') as gender, phone, emaill from tbl_student_202210 order by stuid";
		pstmt = con.prepareStatement(sql);
		rs = pstmt.executeQuery();

		while(rs.next()){
%>
	<tr>
		<td><%= rs.getString("stuid") %></td>
		<td><%= rs.getString("sname") %></td>
		<td><%= rs.getString("jumin") %></td>
		<td><%= rs.getString("dept_name") %></td>
		<td><%= rs.getString("gender") %></td>
		<td><%= rs.getString("phone") %></td>
		<td><%= rs.getString("emaill") %></td>
	</tr>
<%
		}
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		if(rs != null) try{ rs.close(); }catch(Exception e){}
		if(pstmt != null) try{ pstmt.close(); }catch(Exception e){}
		if(con != null) try{ con.close(); }catch(Exception e){}
	}
%>
</table>
