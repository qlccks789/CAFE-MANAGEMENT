<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<c:if test="${count != 0}">
			<c:if test="${prev eq true}">
				<a href="${param.link}?pageNo=${pageResult.beginPage - 1}">이전</a>
			</c:if>
			<c:forEach var="i" begin="${pageResult.beginPage}"
				end="${pageResult.endPage}">
				<c:choose>
					<c:when test="${pageNo eq i}">
						<a class="on" href="${param.link}?pageNo=${i}&sort=${sort}">${i}</a>
					</c:when>
					<c:otherwise>
						<a class="" href="${param.link}?pageNo=${i}&sort=${sort}">${i}</a>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<c:if test="${next eq true}">
				<a href="${param.link}?pageNo=${pageResult.endPage + 1}">다음</a>
			</c:if>
		</c:if>
	</div>
</body>
</html>