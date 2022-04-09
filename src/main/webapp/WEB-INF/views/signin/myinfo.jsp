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
<link href="css/myInfo.css?update" rel="stylesheet" type="text/css">
<style type="text/css">
	@font-face
    {
       font-family: 'Arita-dotum-Medium';
       src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/Arita-dotum-Medium.woff') format('woff');
       font-weight: normal;
       font-style: normal;
   }
   body {font-family:  'Arita-dotum-Medium';}
</style>
<body>
<div class="mymenu">
	<div class="mym">
		<ul>
			<li><a href="myReview.si">게시글 보러가기</a></li>
			<li><a href="reviewWriteForm.rv">게시글 작성</a></li>
			<li><a href="myticket.si">예매 내역</a></li>
			<li><a href="ticketing.re">예매</a></li>
			<li><a href="logout.si">로그아웃</a></li>
			<li><a href="#">회원탈퇴</a></li>
		</ul>
	</div> 
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
