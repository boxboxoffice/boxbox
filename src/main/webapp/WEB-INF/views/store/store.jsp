<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="ftm" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@include file="../public/sessionChk.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">@import url("css/store.css");
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
			<a id="title1"><img alt="로고" src="images/logo/boxoffice.png" height="70px" width="70px"> 스토어</a>
			
			<img class="hero_header" src="images/store/pop.jpg" alt="">
    
    <div class="products">
     
	     <c:forEach items="${select }" var="val">    
	      <a href="store2.st">
		        <img src="#">
		        <p>${val.pdName }</p>
		        <p class="price">${val.pdPrice }</p>
	      </a>
		</c:forEach>     
	
	
      <a href="store2.st">
	        <img src="#">
	        <p>팝콘</p>
	        <p class="price">89,000</p>
      </a>
      
      <a href="store2.st">
	        <img src="#">
	        <p>팝콘</p>
	        <p class="price">69,000</p>
      </a>
      
      <a href="store2.st">
	        <img src="#">
	        <p>팝콘</p>
	        <p class="price">79,000</p>
      </a>
      
      <a href="#">
	        <img src="#">
	        <p>팝콘</p>
	        <p class="price">29,000</p>
      </a>
      
      <a href="#">
	        <img src="#">
	        <p>팝콘</p>
	        <p class="price">99,000</p>
      </a>
      
      <a href="#">
	        <img src="#">
	        <p>팝콘</p>
	        <p class="price">39,000</p>
      </a>
      
      <a href="#">
	        <img src="#">
	        <p>팝콘</p>
	        <p class="price">99,000</p>
      </a>
      
      <a href="#">
	        <img src="#">
	        <p>팝콘</p>
	        <p class="price">79,000</p>
      </a>
      
      <div class="clearfix"></div>
    </div>
    
		
		</div>
	</section>

</body>
</html>