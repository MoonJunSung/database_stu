<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="db.jsp" %>

<%
	//Integer.parseInt();
	String REGIST_CODE = request.getParameter("REGIST_CODE");
	int GAME_NUMBERS = Integer.parseInt(request.getParameter("GAME_NUMBERS"));
	int APPEARANCE = Integer.parseInt(request.getParameter("APPEARANCE"));
	int HIT_NUMBERS = Integer.parseInt(request.getParameter("HIT_NUMBERS"));
	int HOME_RUNS = Integer.parseInt(request.getParameter("HOME_RUNS"));
	int PUT_OUT = Integer.parseInt(request.getParameter("PUT_OUT"));
	int DOUBLE_PLAY = Integer.parseInt(request.getParameter("DOUBLE_PLAY"));
	int ERROR_COUNT = Integer.parseInt(request.getParameter("ERROR_COUNT"));
	
	String sql="INSERT INTO TBL_HITTER_INFO "
			 +" VALUES(?, ?, ?, ?, ?, ? ,? ,?)";
	PreparedStatement p = con.prepareStatement(sql);
	p.setString(1 , REGIST_CODE );
	p.setInt(2 , GAME_NUMBERS);
	p.setInt(3 , APPEARANCE);
	p.setInt(4 , HIT_NUMBERS);
	p.setInt(5 , HOME_RUNS);
	p.setInt(6 , PUT_OUT );
	p.setInt(7 , DOUBLE_PLAY);
	p.setInt(8 , ERROR_COUNT);
	
	p.executeUpdate();
	p.close();
	con.close();
	response.sendRedirect("index.jsp");
	
%>