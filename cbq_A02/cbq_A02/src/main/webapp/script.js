/**
 * 
 */
function check(){
	var frm = document.frm;
	
	if(frm.RESV_NO.value ===""){
		alert("예약번호가 입력되지 않았습니다!");
		frm.RESV_NO.focus();
		return false;
	}
	if(frm.CUST_NO.value ===""){
			alert("고객번호가 입력되지 않았습니다!");
			frm.CUST_NO.focus();
			return false;
		}
	if(frm.RESV_DATE.value ===""){
			alert("예약일자가 입력되지 않았습니다!");
			frm.RESV_DATE.focus();
			return false;
		}
	if(frm.COURT_NO.value ===""){
			alert("코트번호가 입력되지 않았습니다!");
			frm.COURT_NO.focus();
			return false;
		}
		alert("코트예약정보가 입력되었습니다!");
		frm.submit();
}

function restForm(){
	alert("정보를 지우고 처음부터 다시 입력합니다.");
	location.href="courtResv.jsp";
}