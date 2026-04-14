<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>

<script src="script.js"> </script>
<h2>수강신청</h2>

<form name="frm" method="POST" action="action.jsp" onsubmit='return check()'> 
<table>
	<tr style="text-align: left">
		<th>수강월</th>
		<td style="text-align: left">
			<input type='text' name="RESIST_MONTH" autofocus>예)202203
		</td>
	</tr>
	
	<tr>
		<th>회원명</th>
		<td style="text-align: left">
			<select name="C_NAME">
				<option value="">회원명</option>
				<option value="홍길동">홍길동</option>
				<option value="장발장">장발장</option>
				<option value="임꺽정">임꺽정</option>
				<option value="성춘향">성춘향</option>
				<option value="이몽룡">이몽룡</option>
			</select>
		</td>
	</tr>
	
	<tr>
		<th>회원번호</th>
		<td style="text-align: left">
			<input type='text' name="C_NO">
		</td>
	</tr>
	
	<tr>
		<th>강의장소</th>
		<td style="text-align: left">
			<input type='radio' name="CLASS_AREA" value='서울본원'>서울본원
			<input type='radio' name="CLASS_AREA" value='성남본원'>성남분원
			<input type='radio' name="CLASS_AREA" value='대전본원'>대전분원
			<input type='radio' name="CLASS_AREA" value='부산본원'>부산분원
			<input type='radio' name="CLASS_AREA" value='대구본원'>대구분원
		</td>
	</tr>
	
	<tr>
		<th>강의명</th>
		<td style="text-align: left">
		<select name="CLASS_NAME">
				<option value="">강의명</option>
				<option value="100">초급반</option>
				<option value="200">중급반</option>
				<option value="300">고급반</option>
				<option value="400">심화반</option>
		</select>
		</td>
	</tr>
	
	<tr>
		<th>수강료</th>
		<td style="text-align: left">
		<input type='text' name='TUITION'>원
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<input type='submit' value='수강신청'>
			<input type='button' value='다시쓰기' onclick='resetForm()'>
			<!-- 자바스크립트로 resetForm() 만들예정  -->
		</td>
	</tr>

</table>
</form>	

<%@ include file="footer.jsp"%>