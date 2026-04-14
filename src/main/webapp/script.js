function check(){
	 var f = document.frm;
	 
	 if (f.RESIST_MONTH.value === "") {
		alert("수강월이 입력되지 않았습니다.");
		f.RESIST_MONTH.focus();
		return false;
	 }
	 if (f.C_NAME.value === "") {
	 		alert("회원명이 입력되지 않았습니다.");
	 		f.C_NAME.focus();
	 		return false;
	 	 }		
	 if (f.C_NO.value === "") {
		 	alert("회원번호가 입력되지 않았습니다.");
		 	f.C_NO.focus();
		 	return false;
		 	 }		
	 var checked = false
	 for (var i=0 ; i < f.CLASS_AREA.length; i++){
		if(f.CLASS_AREA[i].checked) checked =true;
	 }
	 if (!checked) {
 		 	alert("강의장소가 선택되지 않았습니다.");
 		 	//f.C_NO.focus();
 		 	return false;
 	 }
	 
		if (f.CLASS_NAME.value === "") {
			alert("강의명이 선택되지 않았습니다.");
			f.CLASS_NAME.focus();
			return false;
	 } 	  	 
	 if (f.TUITION.value === "") {
	 			alert("수강료가 입력되지 않았습니다.");
	 			f.TUITION.focus();
	 			return false;
	 	 } 	  	 
	 alert("수강신청이 정상적으로 완료되었습니다.")
	 f.submit();
}

function resetForm(){
	alert("정보를 지우고 처음부터 다시 입력합니다");
	location.href = "classInsert.jsp";
	//document.frm.reset();
	//document.frm.RESIST_MONTH.value="";
	//document.frm.C_NO.value="";
	//document.frm.TUITION.value=""();	
	//document.frm.RESIST_MONTH.focus();
}



