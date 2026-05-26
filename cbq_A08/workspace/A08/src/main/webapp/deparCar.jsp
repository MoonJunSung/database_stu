<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	
<%@ include file="header.jsp"%>
<%@ include file="db.jsp"%>
<script src="script.js" charset="UTF-8"></script>
<h2>차량출차</h2>

<form name="frm" action="deparDB.jsp" method="POST" onsubmit="return checkDep()">
	<table>
		<tr>
			<th>차량번호</th>
			<td style="text-align: left;">
				<select name="CAR_NUMBER" onchange="updateOwner()" autofocus>
					<option value="">차량번호</option>
					<script>
						const carData = {};
					</script>
					<%
						String sql = "SELECT P.CAR_NUMBER, C.OWNER_NAME "
							+"FROM TBL_PARKING_202301 P "
							+"JOIN TBL_CAR_202301 C ON P.CAR_NUMBER = C.CAR_NUMBER "
							+"WHERE DEPARTURE_TIME IS NULL ";
						PreparedStatement p = con.prepareStatement(sql);
						ResultSet rs = p.executeQuery();
						while(rs.next()){
							String CAR_NUMBER = rs.getString("CAR_NUMBER");
							String OWNER_NAME = rs.getString("OWNER_NAME");
					%>
					<option value="<%=CAR_NUMBER %>"> <%=CAR_NUMBER %> </option>
					<script>
						carData["<%=CAR_NUMBER %>"] = "<%=OWNER_NAME %>";
					</script>
					<%
						}
						rs.close();
						p.close();
						con.close();
					%>
				</select>
				<script>
					function updateOwner(){
						const carNum = document.frm.CAR_NUMBER.value;
						const owner = carData[carNum] || " ";
						document.frm.OWNER_NAME.value = owner;
					}
				</script>
			</td>
		</tr>
		<tr>
			<th>소유자이름</th>
			<td style="text-align: left;">
				<input type="text" name="OWNER_NAME" readonly>
			</td>
		</tr>
		<tr>
			<th>출차시간</th>
			<td style="text-align: left;">
				<input type="text" name="DEPARTURE_TIME">예) 22:03
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="출차등록">
				<input type="button" value="다시쓰기" onclick="resetForm()">
			</td>
		</tr>
	</table>



</form>

<%@ include file="footer.jsp"%>