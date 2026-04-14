<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="db.jsp" %>
TEST PAGE
<!--
INSERT INTO TBL_CLASS_2504 VALUES ('202503', '10001', '서울본원', 100000, '100'); -->

<%
	request.setCharacterEncoding("UTF-8");
	//clasInsert.jsp 수강신청 버튼을 눌렀을때 넘어오는 매개변수를 jsp 변수에서 받는
	String RESIST_MONTH = request.getParameter("RESIST_MONTH");
	String C_NO = request.getParameter("C_NO");
	String CLASS_AREA = request.getParameter("CLASS_AREA");
	int TUITION = Integer.parseInt( request.getParameter("TUITION") );
	String CLASS_NAME = request.getParameter("CLASS_NAME");
	
	//서버로 sql문을 보내기 의한 사전작업
	String sql= "INSERT INTO TBL_CLASS_2504 VALUES (?, ?, ?, ?, ?)";
	PreparedStatement p = con.prepareStatement(sql);
	
	p.setString(1, RESIST_MONTH);
	p.setString(2, C_NO);
	p.setString(3, CLASS_AREA);
	p.setInt(4, TUITION);
	p.setString(5, CLASS_NAME);
	
	p.executeUpdate();
	p.close();
	con.close();
	response.sendRedirect("index.jsp"); //입력완료시 첫페이지로
%>