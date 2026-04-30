<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="db.jsp" %>

<%
	request.setCharacterEncoding("UTF-8"); // 한글로 넘어오는 경우 꼭 써야함
	// 왼쪽은 DB 오른쪽은 jsp에서 넘어오는 NAME
	String resv_no = request.getParameter("resv_no");
	String resv_date = request.getParameter("resv_date");
	String court_no = request.getParameter("court_no");
	String cust_no = request.getParameter("cust_no");
	
	String sql = "insert into tbl_resv_202301 values(?, ?, ?, ?)";
	PreparedStatement p = con.prepareStatement(sql);
	
	// insert 문에 ? 표시 위치를 먼저 적고 그뒤에 DB속성명을 적어줌
	// db.sql의 insert into와 순서가 일치해야함
	p.setString(1, resv_no);
	p.setString(2, resv_date);
	p.setString(3, court_no);
	p.setString(4, cust_no);
	p.executeUpdate();
	
	p.close();
	con.close();
	response.sendRedirect("index.jsp");
%>