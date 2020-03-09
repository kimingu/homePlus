/**
 * 
 */

/* =======================비밀번호 체크 Modal===================== */

function pwdChk() {
	
	var p1 = document.getElementById("inputPwd");
	var p2 = document.getElementById("checkPwd");
	
	 if (p1.value == p2.value) {
	    	alert("비밀번호가 일치합니다.");
	    	p1.value = null;
	    	document.getElementById("close").click();
			document.getElementById("modify").click();
	    } else {
	        alert("비밀번호가 일치하지 않습니다.");
	    }
}






	
