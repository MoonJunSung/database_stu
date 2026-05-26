<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file='db.jsp' %>

<%
	request.setCharacterEncoding("UTF-8");
	String RESV_NO = request.getParameter("RESV_NO");
	String RESV_DATE = request.getParameter("RESV_DATE");
	String COURT_NO = request.getParameter("COURT_NO");
	String CUST_NO = request.getParameter("CUST_NO");
	
	String sql = "INSERT INTO TBL_RESV_202301 VALUES(?,?,?,?)";
	PreparedStatement p = con.prepareStatement(sql);
	
	p.setString(1,RESV_NO);
	p.setString(2,RESV_DATE);
	p.setString(3,COURT_NO);
	p.setString(4,CUST_NO);
	p.executeUpdate();
	
	p.close();
	con.close();
	response.sendRedirect("index.jsp");
%>