<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BoxOffice</title>
<link rel="icon" href="images/logo/tricon.ico">
</head>
<body>

<header><jsp:include page="../public/topmenu.jsp"></jsp:include></header>

<c:if test="${result > 0 }">
<script type="text/javascript">
	alert("게시글 작성 완료");
	location.href = "masterMovieList.mv";
</script>
</c:if>
<c:if test="${result == 0 }">
<script type="text/javascript">
	alert("작성 실패, 다시 시도해 주세요");
	history.back();
</script>
</c:if>

<footer><jsp:include page="../public/bottom.jsp"></jsp:include></footer>
</body>
</html>