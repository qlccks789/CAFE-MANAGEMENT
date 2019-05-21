<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<div>
	<!-- 이전과 다음을 추가하여 페이지를 10개씩보게하여 페이지 이동을 시킨다. -->
	<c:if test="${pageResult.prev eq true}">
		<a href="${param.link}?pageNo=${pageResult.beginPage - 1}">이전</a>
	</c:if>
	<c:forEach var="i" begin="${pageResult.beginPage}" end="${pageResult.endPage}">
		<a href="${param.link}?pageNo=${i}">[${i}]</a>
	</c:forEach>
	<c:if test="${pageResult.next eq true}">
		<a href="${param.link}?pageNo=${pageResult.endPage + 1}">다음</a>
	</c:if>
</div>