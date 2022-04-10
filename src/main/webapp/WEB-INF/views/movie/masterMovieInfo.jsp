<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@include file="../public/sessionChk.jsp" %>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@taglib prefix="ftm" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ticket&Review</title>
<link href="css/memberlinfoM.css?update" rel="stylesheet" type="text/css">
<link rel="icon" href="images/logo/tricon.ico">
</head>
<body>
<section>
<div id="maincontent">
<a href="main.do"><img alt="로고" src="images/logo/T&R.png" height="30px" width="30px" id="logo"></a><a id="title1" href="masterpage.do">| T & R 관리페이지</a>
<div id="contentBox">
<div id="infotitle">| 영화정보</div>
<div id="memberinfo">
<table>
<tr>
<td>무비 코드:</td><td><input type="text" value="${movie.mvCode }" readonly="readonly" class="info"></td>
</tr>
<tr>
<td>영화 제목:</td><td><input type="text" value="${movie.mvTitle }" readonly="readonly"  class="info"></td>
</tr>
<tr>
<td>무비 태그:</td><td><input type="text" value="${movie.mvTag }" readonly="readonly"  class="info"></td>
</tr>
<tr>
<td>개봉일:</td><td><input type="text" value="${movie.openDate }" readonly="readonly"  class="info"></td>
</tr>
<tr>
<tr>
<td>영화 등급:</td><td><input type="text" value="${movie.mvGrade }" readonly="readonly"  class="info"></td>
</tr>
<tr>
<td>평점:</td><td><input type="text" value="${movie.movieStar }" readonly="readonly"  class="info"></td>
</tr>
<tr>
<td>장르:</td><td><input type="text" value="${movie.Genre }" readonly="readonly" class="info"></td>
</tr>
<tr>
<td>가격:</td><td><input type="text" value="${movie.mvPrice }" readonly="readonly" class="info"></td>
</tr>
</table>
<div id="goback" class="action"><a href="javascript:window.history.back();">뒤로가기</a></div>
<c:if test="${movie.movieTag == 2 }">
<div id="activecheck" ><a href="movieUpdate.mv?mvCode=${movie.mvCode }&mvTag=${movie.mvTag }" >상영종료</a></div>
</c:if>
<c:if test="${movie.mvTag == 3 }">
<div id="activecheck" ><a href="movieUpdate.mv?mvCode=${movie.mvCode }&mvTag=${movie.mvTag }" >상영시작</a></div>
</c:if>
</div>
</div>

</div>
</section>
<footer><div id="footcontent"><jsp:include page="../public/bottom.jsp"></jsp:include></div></footer>
</body>
</html>