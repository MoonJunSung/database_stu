<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="db.jsp" %>
<%
	request.setCharacterEncoding("UTF-8");
	String CAR_NUMBER = request.getParameter("CAR_NUMBER");
	//String OWNER_NAME = request.getParameter("OWNER_NAME");
	String DEPARTURE_TIME = request.getParameter("DEPARTURE_TIME");
	String sql = "UPDATE TBL_PARKING_202301 "
				+" SET DEPARTURE_TIME = ? "
				+" WHERE CAR_NUMBER=? "; //WHERE TRIM(CAR_NUMBER)=?
	
	PreparedStatement p = con.prepareStatement(sql);
	p.setString(1, DEPARTURE_TIME);
	p.setString(2, CAR_NUMBER);
	//int r = p.executeUpdate();
	//out.println(r);
	p.close();
	con.close();
	response.sendRedirect("index.jsp");
%>
