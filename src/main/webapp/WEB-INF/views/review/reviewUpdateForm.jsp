<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="css/reviewUpdateForm.css?update" rel="stylesheet" type="text/css">
</head>
<body>
<header><div id="headbar"><jsp:include page="../public/topmenu.jsp"></jsp:include></div></header>
	<div id="mainContainer" align="center">
		<form action="reviewUpdate.rv" method="post" name="frm" onsubmit="return chk()">
		<input type="hidden" name="rvNum" value="${rvNum }">
		<input type="hidden" name="pageNum" value="${pageNum}">
			<table id="mainTable" class="table table-hover">
				<caption class="caption">리뷰 수정</caption>
				<tr>
					<th width="18%">제목</th>
					<td><input type="text" name="rvTitle" required="required" autofocus="autofocus"
						size="77" placeholder="제목을 입력하세요. (20자)" maxlength="20"></td>
				</tr>
				<tr>
					<th width="18%">작성자</th>
					<td>&nbsp;${id }</td>
				</tr>
				<tr>
					<th width="18%">비밀번호</th>
					<td>&nbsp;<input type="password" name="password" required="required" placeholder="비밀번호" /></td>
				</tr>
				<tr>
					<th width="18%">비밀번호 확인</th>
					<td>&nbsp;<input type="password" name="password2" required="required" placeholder="비밀번호 확인 " /></td>
				</tr>
				<tr>
					<th width="18%">영화제목</th>
					<td>&nbsp;${review.mvTitle }</td>
				</tr>
				<tr >
					<th width="18%">평점</th>
					<td>&nbsp;<input type="range" min="1" max="10" class="slider" id="myRange" name="rvGrade">
						<span id="value"></span></td>
				</tr>
				<tr>
					<th width="18%">내용<br><sup>(<span id="nowByte">0</span>/1000bytes)</sup></th>
					<td><textarea rows="8" cols="79" name="rvContent" required="required"
						placeholder="리뷰 내용을 입력하세요. (1000bytes)" onkeyup="fn_checkByte(this)"></textarea></td>
				</tr>
			</table>
			<br>
			<button class="btn btn-outline-dark btn-sm">수정</button>
		</form>
	</div>
	<footer><div id="footer"><jsp:include page="../public/footer.jsp"></jsp:include></div></footer>
<script type="text/javascript">
	var slider = document.getElementById("myRange");
	var output = document.getElementById("value");
	output.innerHTML = "★" + slider.value;
	
	slider.oninput = function() {
	    output.innerHTML ="★" + this.value;
}
	function chk() {
		if (frm.password.value != frm.password2.value) {
			alert("비밀번호가 서로 다릅니다. 다시 입력해주세요."); frm.password.focus();
			frm.password.value = ""; frm.password2.value = "";
			return false;
		}
	}
	
	//textarea 바이트 수 체크하는 함수
    function fn_checkByte(obj){
        const maxByte = 1000; //최대 1000바이트
        const text_val = obj.value; //입력한 문자
        const text_len = text_val.length; //입력한 문자수

        let totalByte=0;
        for(let i=0; i<text_len; i++){
            const each_char = text_val.charAt(i);
            const uni_char = escape(each_char) //유니코드 형식으로 변환
            if(uni_char.length>4){
                // 한글 : 2Byte
                totalByte += 2;
            }else{
                // 영문,숫자,특수문자 : 1Byte
                totalByte += 1;
            }
        }
        
        if(totalByte>maxByte){
            alert('최대 1000Byte까지만 입력가능합니다.');
            document.getElementById("nowByte").innerText = totalByte;
            document.getElementById("nowByte").style.color = "red";
        }else{
            document.getElementById("nowByte").innerText = totalByte;
            document.getElementById("nowByte").style.color = "white";
        }
    }

</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>