<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="ftm" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@include file="../public/sessionChk.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ticket&Review</title>
<style type="text/css">@import url("css/ticket1.css");</style>

</head>
<body>
   
<header><div id="headbar"><jsp:include page="../public/topmenu.jsp"></jsp:include></div></header>

	<section>
		<div id="maincontent">
		<a id="title1"><img alt="로고" src="images/logo/boxoffice.png" height="70px" width="70px">예약 내역</a>
		<a id="title2">| 예약이 완료되었습니다</a>
		<div id="movieNowBox">
		
			
			<div id ="hyun1">
				<p>티켓 번호 : ${ticketCode }</p>
				<p>영화 이름 : ${mvTitle }</p>
				<p>극장 위치 : ${ttLoc }  ${ttName }</p>
				<p>날짜 : ${showingDay }</p>
				<p>상영관 : ${screenNum }관</p> 
				<p>상영 시간 : ${screenTime }</p>
				<c:if test="${age == 1}">
					<p>예약 인원: 청소년 ${people }명</p>
				</c:if>
				<c:if test="${age == 2}">
					<p>예약 인원: 일반  ${people }명</p>
				</c:if>
				<c:if test="${age == 3}">
					<p>예약 인원: 경로 ${people }명</p>
				</c:if>
				<c:if test="${age == 4}">
					<p>예약 인원: 우대 ${people }명</p>
				</c:if>
				
				<p>예약 ID: ${id }</p>
				<c:if test="${age ==1 }">
					<p>결제 총 가격: ${mvPrice*people * 70 / 100 }원</p>
					<p id="discount">&nbsp;* 청소년할인 : 30% 적용</p>
				</c:if>
				<c:if test="${age ==2 }">
					<p>결제 총 가격: ${mvPrice*people }원</p>
				</c:if>
				<c:if test="${age ==3 }">
					<p>결제 총 가격: ${mvPrice*people * 80 /100 }원</p>
					<p id="discount">&nbsp;* 경로할인 : 20% 적용</p>
				</c:if>
				<c:if test="${age ==4 }">
					<p>결제 총 가격: ${mvPrice*people * 70 / 100 }원</p>
					<p id="discount">&nbsp;* 우대할인 : 30% 적용</p>
				</c:if>
			</div>
			<br>
			<button style="width:330px; text-align:center; background-color:white; color : #F95700;" class="button" onclick="location.href='main.do'" ><b>메인으로 가기</b></button>
			<br><br>
			<button style="width:330px; text-align:center; background-color:white; color : #F95700;" class="button" onclick="location.href='myTicketView.si?ticketCode=${ticketCode }&mvTitle=${mvTitle }&nsCode=${nsCode }'" ><b>예매 확인으로 가기</b></button>
		
		
		
		</div>
		</div>
	</section>
            


<footer></footer>

</body>
</html>