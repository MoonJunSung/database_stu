<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="db.jsp"%>
<%
	request.setCharacterEncoding("UTF-8");
	String CAR_NUMBER = request.getParameter("CAR_NUMBER");
	String OWNER_NAME = request.getParameter("OWNER_NAME");
	String LOCATION = request.getParameter("LOCATION");
	String ENTRANCE_TIME = request.getParameter("ENTRANCE_TIME");
	
	String sql = "INSERT INTO TBL_PARKING_202301(CAR_NUMBER, LOCATION, ENTRANCE_TIME) "
			     +"values(?, ?, ?) ";
	PreparedStatement p = con.prepareStatement(sql);
	p.setString(1, CAR_NUMBER);
	p.setString(2, LOCATION);
	p.setString(3, ENTRANCE_TIME);
	p.executeUpdate();
	p.close();
	con.close();
	response.sendRedirect("index.jsp");
%>

