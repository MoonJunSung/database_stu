/**
 * 
 */

function check2(){
	var frm = document.frm;
	
	if(frm.cust_no.value === ""){
		alert("고객번호가 입력되지 않았습니다!");
		frm.cust_no.focus();
		return false;
	}
	frm.submit();
}

function check(){
	var frm = document.frm;
	
	if(frm.resv_no.value === ""){
		alert("예약번호가 입력되지 않았습니다!");
		frm.resv_no.focus();
		return false;
	}
	if(frm.cust_no.value === ""){
		alert("고객번호가 입력되지 않았습니다!");
		frm.cust_no.focus();
		return false;
	}
	if(frm.resv_date.value === ""){
		alert("예약일자가 입력되지 않았습니다!");
		frm.resv_date.focus();
		return false;
	}
	if(frm.court_no.value === ""){
		alert("코트번호가 입력되지 않았습니다!");
		frm.court_no.focus();
		return false;
	}
	alert("코트예약정보가 등록되었습니다");
	frm.submit(); //이상없음 => submit() 동작
}

function resetForm(){
	alert("정보를 지우고 처음부터 다시 입력합니다.");
	location.href="courtResv.jsp";
}

function goHome(){
	location.href="index.jsp";
}







