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

<style>
  .clicked {
    color: black;
	background-color: white;
  }
</style>   

	<script type="text/javascript">
	var showingDay = document.getElementById("day-button${val.showingDay }");
	console.log(showingDay);
	
	function goTicketing4(){	
		location.href="ticketing4.re?mvCode="+${movie.mvCode}+"&ttCode="+${theater.ttCode }+
				"&screenCode="+${val.screenCode }+"rsCode=0&screenTime="+{val.screenTime}+"showingDay="+showingDay;
	}

</script>


</head>
<body>


	<header><div id="headbar"><jsp:include page="../public/topmenu.jsp"></jsp:include></div></header>




	<section>
		<div id="maincontent">
		<a id="title1"><img alt="로고" src="images/logo/boxoffice.png" height="70px" width="70px">시간 선택</a>
		
		<div class="reserve-container">
		        <div class="movie-part">
		            <div class="reserve-title">영화</div>
		            <c:forEach items="${list }" var="val">            
		            	<div class="movie-list-container">
		           		 <button class="movie-list-button" onclick="location.href='ticketing2.re?mvCode=${val.mvCode }'">${val.mvTitle }</button>
		            </div>            
		            </c:forEach>
		        </div>
		        <div class="theater-part">
		            <div class="reserve-title">극장</div>            
		            <div class="theater-container">
		            <c:forEach items="${list2 }" var="val">
		            		<div class="theater-wrapper">            	
							<div class="theater-location-wrapper">
		            			<button class="theater-location">${val.ttLoc }</button>
		            			<button class="theater-place" onclick="location.href='ticketing3.re?mvCode=${movie.mvCode}&ttCode=${val.ttCode }'">${val.ttName }</button>
		            		</div>             	   
		            		</div>                                                    
		           	</c:forEach>
		           	</div>
		                                      
		        </div>
		        <div class="day-part">
		        	<div class="reserve-title">날짜</div>        	
		        		<c:forEach items="${list4 }" var="val">        	
		        			<div id= "day-container" class="day-container">
		        				<button class="day-button" id="day-button${val.showingDay }" value="${val.showingDay }" onclick="location.href='ticketing4.re?mvCode=${movie.mvCode}&ttCode=${theater.ttCode }&showingDay=${val.showingDay }'">${val.showingDay }</button>
		        			</div>        	
		        		</c:forEach>        	
		        </div>        
		        <div class="time-part">
		        	<div class="reserve-title">시간</div>
		       		<c:forEach items="${screen }" var="screen">
		        		<div class="reserve-where">${screen.screenNum }관</div>
		                <c:forEach items="${list3 }" var="val">
		                	<div class="reserve-time-wrapper"> 
		           				<c:if test="${val.screenNum eq screen.screenNum}">
		             				<button class="reserve-time-button" onclick="location.href='ticketing5.re?mvCode=${movie.mvCode}&ttCode=${theater.ttCode }&screenCode=${val.screenCode }&rsCode=0&screenTime=${val.screenTime }&showingDay=${showingDay}&screenNum=${screen.screenNum }'">
		           						 <span class="reserve-time-want" >${val.screenTime }</span>
		          					</button>
		           				</c:if>
		        			</div>
		        		</c:forEach>
		        	</c:forEach>
			</div>       
		
		</div> 
		</div>
	</section>
            
           
<script>
var dayButton = document.getElementsByClassName("day-button");

function handleClick(event) {
	console.log(event.target);
  	console.log(event.target.classList);
  	if (event.target.classList[1] === "clicked") {
	    event.target.classList.remove("clicked");
	  } else {
	    for (var i = 0; i < dayButton.length; i++) {
	    	dayButton[i].classList.remove("clicked");
	    }
	    event.target.classList.add("clicked");
	  } 
}

function init(){
	for (var i = 0; i < dayButton.length; i++) {
		  dayButton[i].addEventListener("click", handleClick);
	  }
}

init();

</script>



<!-- <footer><div id="footcontent"><jsp:include page="../public/bottom.jsp"></jsp:include></div></footer>  -->

</body>
</html>