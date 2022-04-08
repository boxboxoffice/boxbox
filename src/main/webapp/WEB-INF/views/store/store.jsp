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
	
      <a href="store2.st">
	        <img src="images/store/orPop.jpg">
	        <p>오리지널 팝콘</p>
	        <p class="price">5,000</p>
      </a>
      
      <a href="store2.st">
	        <img src="images/store/caPop.jpg">
	        <p>카라멜 팝콘</p>
	        <p class="price">6,000</p>
      </a>
      
      <a href="store2.st">
	        <img src="images/store/chPop.jpg">
	        <p>더블치즈 팝콘</p>
	        <p class="price">6,000</p>
      </a>
      
      <a href="store2.st">
	        <img src="images/store/hDog.jpg">
	        <p>플레인 핫도그</p>
	        <p class="price">3,500</p>
      </a>
      
      <a href="store2.st">
	        <img src="images/store/naC.jpg">
	        <p>칠리나쵸</p>
	        <p class="price">4,900</p>
      </a>
      
      <a href="store2.st">
	        <img src="images/store/squ.jpg">
	        <p>즉석구이 오징어</p>
	        <p class="price">4,000</p>
      </a>
      
      <a href="store2.st">
	       <img src="images/store/coke.jpg">
	        <p>콜라</p>
	        <p class="price">3,000</p>
      </a>
      
      <a href="store2.st">
	        <img src="images/store/Cof.jpg">
	        <p>(ICE)아메리카노</p>
	        <p class="price">3,500</p>
      </a>
      
      <a href="store2.st">
	        <img src="images/store/hCof.jpg">
	        <p>(HOT)아메리카노</p>
	        <p class="price">3,000</p>
      </a>
      
      
      <div class="clearfix"></div>
    </div>
    
		
		</div>
	</section>

</body>
</html>