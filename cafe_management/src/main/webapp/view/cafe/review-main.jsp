<%@page import="kr.co.bitguys.repository.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>카페후기 메인화면(전체조회)</title>
<%@ include file="../include/include_style.jsp"%>
</head>

<body>
	<!-- 헤더 -->
	<%@ include file="../include/header.jsp"%>

	<div class="container">
		<!-- 카페후기 상단 -->
		<div class="review_header">
			<div class="review_header_picklist">
				<ul class="pick_list">
					<li><a href="">추천순</a></li>
					<li><a href="">별점순</a></li>
					<li><a href="">등록일순</a></li>
				</ul>
			</div>

			<div class="review_header__right">
				<div class="review_header_search">
					<input type="text" name="search" placeholder="검색" />
				</div>
				<form action="review-insertform.do">
					<div class="review_header_insertlink">
						<button id="insertbutton">후기 글 등록</button>
					</div>
				</form>
			</div>
		</div>
		<!-- ${pageContext.request.contextPath}/view/cafe/download.do?path=/cafe-review-image/2019/04/08&name=a3331be6-c35e-4c37-a7d8-b7dbd1c7eaa5.jpg -->
		<!-- 카페후기 중간 (카페사진 및 제목)-->
		<div class="review_center">
			<div class="image">
				<c:forEach var="review" items="${reviewlist}">
					<div class="image1">				
						<a href="review-detail.do?no=${review.reviewNo}">
							<img src="download.do?path=${review.imageList[0].path}&sysname=${review.imageList[0].sysname}" onerror="this.src='../../resources/images/a.jpg'"/>
						<span id="text">
			                ${review.name}
  		               </span>
						</a>
					</div>
				</c:forEach>
			</div>
		</div>
		
		
		<!-- 카페 페이징 -->
		<div class="review_page-main">
			<c:if test="${pageResult.count != 0}">
				<jsp:include page="../include/reviewpagetype1.jsp">
					<jsp:param name="link" value="review-list.do" />
				</jsp:include>
			</c:if>
		</div>
	</div>


		<!-- 푸터 (하단)-->
		<%@ include file="../include/footer.jsp"%>
		<script src="../../resources/js/common/jquery-3.3.1.min.js"></script>
		<script src="../../resources/js/common/top_button.js"></script>
</body>
</html>
