/**
 * 
 */

function insertCheck(){
	
	var frm = document.frm;
	
	if(frm.REGIST_CODE.value===""){
		alert("타자가 선택되지 않았습니다!");
		frm.REGIST_CODE.focus();
		return false;
	}
	
	if(frm.GAME_NUMBERS.value===""){
		alert("게임 수가 입력되지 않았습니다!");
		frm.GAME_NUMBERS.focus();
		return false;
	}
	if(frm.APPEARANCE.value===""){
		alert("타석 수가 입력되지 않았습니다!");
		frm.APPEARANCE.focus();
		return false;
	}
	if(frm.HIT_NUMBERS.value===""){
		alert("안타 수가 입력되지 않았습니다!");
		frm.HIT_NUMBERS.focus();
		return false;
	}
		
	if(frm.HOME_RUNS.value===""){
		alert("홈런 수가 입력되지 않았습니다!");
		frm.HOME_RUNS.focus();
		return false;
	}
	
	if(frm.PUT_OUT.value===""){
		alert("아웃 카운트 수가 입력되지 않았습니다!");
		frm.PUT_OUT.focus();
		return false;
	}
	
	if(frm.DOUBLE_PLAY.value===""){
		alert("더블 플레이 수가 입력되지 않았습니다!");
		frm.DOUBLE_PLAY.focus();
		return false;
	}
	
	if(frm.ERROR_COUNT.value===""){
		alert("에러 수가 입력되지 않았습니다!");
		frm.ERROR_COUNT.focus();
		return false;
	}
	
	alert("타자 성적 정보 등록이 완료 되었습니다!");
	frm.submit();	
}

function reset(){
	alert("정보를 지우고 처음부터 다시 입력합니다!");
	location.href="insertScore.jsp";
}