<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<header><div id="headbar"><jsp:include page="../public/topmenu.jsp"></jsp:include></div></header>
<style> 
#info {
	display: flex;
	border: solid 1px;
	padding: 10px;
	width: 550px;
	height: 400px;
    margin-left: 280px;
    
	
} 
.myinfo {
	display: flex;
	margin-bottom: 30px;
	margin-top: 20px
}
.myinfo div {
    text-align: center;
    width: 91px;
    height: 35px;
    line-height: 35px;
    border: solid 1px;
    border-radius: 30px;
    margin: 7px;
}
.myinfo input {
	border: solid 0px;
	width: 120px;
	text-align: center;
	font-size: 15px;
}

.my1 {
	border: 0px;
	padding: 60px 40px 0 40px;
}

.my2 {
	border: 0px;
	padding-top: 60px;
}

.mb {
	position: absolute;
    font-size: 32px;
    margin-left: 208px;
}
.test {
	display: flex;
}

.test1 {
    border: solid 1px;
    width: 150px;
    margin-left: 250px
}

.addr {
    display: flex;
    position: absolute;
    padding: 320px 0 0 40px;
}

.addr div {
	border: solid 1px;
    width: 91px;
    height: 35px;
    margin: 7px;
    line-height: 36px;
    text-align: center;
    border-radius: 30px;
}

.addr input {
	height: 35px;
    margin: 7px;
    border: solid 0px;
    width: 358px;
    text-align: center;
}
</style> 
<body>
<div class="test">
<div class="test1"><a href="myReview.si">게시글 보러기</a><p><a href="myticket.si">예약 현황</a><p>로그아웃<p>회원탈퇴</div> 
	<div id="info">
		<div class="mb">회원정보</div>
		<div class="my1">
			<div class="myinfo"><div>아이디</div><input type="text" value="${member.id }" readonly="readonly"></div>
			<div class="myinfo"><div>이름</div><input type="text" value="${member.name }" readonly="readonly"></div>
			<div class="myinfo"><div>전화번호</div><input type="text" value="${member.tel }" readonly="readonly"></div>
		</div>
		<div class="my2">
			<div class="myinfo"><div>작성글 수</div><input type="text" value="${member.textcount }" readonly="readonly"></div>
			<div class="myinfo"><div>예매 횟수</div><input type="text" value="${member.ticketcount }" readonly="readonly"></div>
			<div class="myinfo"><div>가입일</div><input type="text" value="${member.reg_date }" readonly="readonly"></div>
		</div>
		<div class="addr"><div>주소</div><input type="text" value="${member.address }" readonly="readonly"></div>
	</div>
</div>
</body>
</html>
