<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/reviewMain.css?update" rel="stylesheet" type="text/css">
</head>
<style>

</style>
<body>
<header><div id="headbar"><jsp:include page="../public/topmenu.jsp"></jsp:include></div></header>
<!-- Review NavBar-->
<!-- Review Table -->
<div id="mainContainer" align="center">
	<table id="mainTable" class="table table-hover">
		<thead id="thead">
			<tr>
				<th>번호</th>
				<th>리뷰제목</th>
				<th>영화제목</th>
				<th>작성자</th>
				<th>평점</th>
				<th>추천</th>
				<th>조회수</th>
			</tr>
		</thead>
		<tbody>
			<c:if test="${empty list }">
				<tr>
					<th colspan="7">게시글이 없습니다.</th>
				</tr>
			</c:if>
			<c:if test="${not empty list }">
				<c:forEach items="${list }" var="review">
					<tr>
						<td>${review.rvNum }</td>
						<c:if test="${review.rvDel == 'y' }">
							<th colspan="6">삭제된 게시글 입니다.</th>
						</c:if>
						<c:if test="${review.rvDel == 'm' }">
							<th colspan="6">관리자에 의해 삭제된 게시글 입니다.</th>
						</c:if>
						<c:if test="${review.rvDel != 'y' and review.rvDel != 'm' }">
							<td>
								<c:if test="${review.rvReadCount >= 50}">
									<a href="reviewView.rv?rvNum=${review.rvNum }&pageNum=${currentPage}">🔥${review.rvTitle }🔥</a>
								</c:if>
								<c:if test="${review.rvReadCount <= 49}">
									<a href="reviewView.rv?rvNum=${review.rvNum }&pageNum=${currentPage}">${review.rvTitle }</a>
								</c:if>
							</td>
							<td>${review.mvTitle }</td>
							<td>${review.id }</td>
							<td>⭐${review.rvGrade }</td>
							<td>${review.rvLike }</td>
							<td>${review.rvReadCount }</td>
						</c:if>
					</tr>
				</c:forEach>
			</c:if>
		</tbody>
	</table>
	<br>
	<button class="btn btn-outline-dark btn-sm" onclick="return chk()" style="float: right;">리뷰작성</button>
</div>
<br>
<br>
<br>
<div align="center">
	<!-- 앞에 보여줄 것이 있다 -->
	<c:if test="${startPage  > PAGE_PER_BLOCK }">
		<button class="btn btn-outline-dark btn-sm" onclick="location.href='reviewMain.rv?pageNum=${startPage-1}'">이전</button>
	</c:if>
	<c:forEach var="i" begin="${startPage }" end="${endPage }">
		<button class="btn btn-outline-dark btn-sm" onclick="location.href='reviewMain.rv?pageNum=${i}'">${i}</button>
	</c:forEach>
	<!-- 아직 보여줄 것이 남아 있다 -->
	<c:if test="${endPage < totalPage }">
		<button class="btn btn-outline-dark btn-sm" onclick="location.href='reviewMain.rv?pageNum=${endPage+1}'">다음</button>
	</c:if>
</div>
<footer>
</footer>
<script type="text/javascript">
	function chk() {
		if (${id == null}) {
			alert("로그인 후 작성 가능합니다.");
			location.href="signInForm.do";
		} else {
			location.href="reviewWriteForm.rv?num=0&pageNum=1"
		}
	}
</script>
</body>
</html>