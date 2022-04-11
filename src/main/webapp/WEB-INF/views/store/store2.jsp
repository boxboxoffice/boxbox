<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	@import url("css/store2.css");
	@font-face
   {
	    font-family: 'Arita-dotum-Medium';
	    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/Arita-dotum-Medium.woff') format('woff');
	    font-weight: normal;
	    font-style: normal;
	}
</style>
</head>
<body>
<header><div id="headbar"><jsp:include page="../public/topmenu.jsp"></jsp:include></div></header>
<section>
	<div id="maincontent">
		<a id="title1"><img alt="로고" src="images/logo/boxoffice.png" height="70px" width="70px">구매 상품</a>
		<table id="storeView" style="margin-left:10%; border : solid 1px;" >
		<tr id="storecontent">
			<td  colspan="2"><a href="store.st?pdCode=${store.pdCode }"><img alt="포스터" src="images/store/${store.image }" width="320" ></a><br><br><br></td>
		</tr>
				
				<tr>
					<th>상품명 : </th><td>${pdName }</td>
				</tr>
				<tr>
					<th>상품 수량 : </th><td>
														<select><option value="0">선택</option>
																	<option value="1">1</option>
																	<option value="2">2</option>
																	<option value="3">3</option>
														</select>
													</td>
				</tr>
				<tr>
					<th> 총  가격 :</th><td> ${pdPrice}</td>
				</tr>
				
		</table>
		<div id="payinfo"><table id="payInfoTable"><tr><td>무통장 입금 : 카카오뱅크 :1111-333-4444-5555 </td><td></td></tr></table></div>
			<div id="main1">
		 		<button  class="main" onclick="location.href='main.do'" ><b>메인으로 가기</b></button>
		 		<button class="main" onclick="location.href='myticket.si'"><b>예약 현황</b></button>
			</div>
	
	</div>
</section>

</body>
</html>