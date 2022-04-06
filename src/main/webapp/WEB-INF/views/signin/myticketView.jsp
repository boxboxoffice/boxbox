<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="../public/sessionChk.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ticket&Review</title>
<style type="text/css">@import url("css/ticketreview1.css");</style>
</head>
<body>

<header><div id="headbar"><jsp:include page="../public/topmenu.jsp"></jsp:include></div></header>


<section>
<div id="maincontent">
		 <a id="title2"><img alt="로고" src="images/logo/boxoffice.png" height="70px" width="70px">예약 정보</a>
						
		<table id="ticketView" style="margin-left:10%; border : solid 1px;" >
		<tr id="ticketcontent">
			<td  colspan="2"><a href="movieInfo.mv?mvCode=${movie.mvCode }"><img alt="포스터" src="images/posters/${movie.poster }" width="320" ></a><br><br><br></td>
		</tr>
				<tr>
					<th>티켓번호 </th><td> ${ticketCode }</td>
				</tr>
				<tr>
					<th>영화 제목</th> <td> ${movie.mvTitle }</td>
				</tr>
				<tr>
					<th>영화관 </th><td>${theater.ttLoc}:${theater.ttName}</td>
				</tr>
				<tr>
					<th>상영날짜</th><td>${nowshowing.showingDay }</td>
				</tr>
				<tr>
					<th>상영시간</th><td> ${screen.screenTime }</td>
				</tr>
				<tr>
					<th>상영관</th><td> ${screen.screenNum}</td>
				</tr>
		<tr>
		<td colspan="7">
			<c:if test="${reservation.shCheck eq 'y' }">
				<c:if test="${reservation.rsCheck eq 'y' }">
					<c:if test="${reservation.rvCheck eq 'n' }">
						<a href="reviewWriteForm.re?mvCode=${movie.mvCode }&rsCode=${reservation.rsCode}" class="button">리뷰 남기기</a>
					</c:if>
					<c:if test="${reservation.rvCheck eq 'y' }">
						<a href="reviewMain.re?" class="button">리뷰 보러가기</a>
					</c:if>
				</c:if>
			</c:if>
		</td>
		</tr>
		</table>
		<c:if test="${reservation.shCheck eq 'n' }">
		<div id="payinfo"><table id="payInfoTable"><tr><td>결제 정보 : </td><c:if test="${reservation.rsCheck eq 'n' }"><td>무통장 입금 카카오뱅크 :1111-333-4444-5555</td><td> ${reservation.mvPrice }원</td></c:if><c:if test="${reservation.rsCheck eq 'y' }"> <td>결제 완료</td></c:if></tr></table></div>
		</c:if>
		</div>
	</section>

</body>
</html>