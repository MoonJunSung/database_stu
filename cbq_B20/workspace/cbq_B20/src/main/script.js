/**
 * 
 */
function menu2Check(){
	var frm = document.frm;
	
	if (frm.REGIST_CODE.value===""){
		alert("선수 등록 코드가 입력되지 않았습니다!");
		frm.REGIST_CODE.focus();
		return false;
	}
	frm.submit();
}
