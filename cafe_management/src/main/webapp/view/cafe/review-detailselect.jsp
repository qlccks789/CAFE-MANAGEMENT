<%@page import="kr.co.bitguys.repository.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>카페후기 상세조회</title>
<%@ include file="../include/include_style.jsp"%>
</head>
<body>
	<!-- 헤더-->
	<%@ include file="../include/header.jsp"%>
	<div class="review-detail-all">
		<div class="review-detail-centercolor">
			<!-- 카페후기 상세조회 -->
			<div class="container">
				<br /> <br /> <br />
				<div class="review-detail__color">
					<div class="review_detail__header">
						<div class="review_detail__header__top">
							<c:set var="reviewDetail" value="${reviewDetail}" />
							<div class="review_detail__title">${reviewDetail.name}</div>

							<div class="review_detail__link">
								<a href="#"><button>수정</button></a> <a href="#"><button>삭제</button></a>
							</div>
						</div>
						<hr />
						<c:set var="member" value="${member}"/>
						<div class="review_detail__writer">작성자 : ${member.nickname}</div>

						<div class="review-detail__rating-point">
							<div id="reviewStars-input">
								<div class="review-detail__stars__text">
									<span>별점 : </span>

									<div class="review-detail__stars__star">
										<input id="star-4" type="radio" name="reviewStars" /> <label
											title="gorgeous" for="star-4"></label> <input id="star-3"
											type="radio" name="reviewStars" /> <label title="good"
											for="star-3"></label> <input id="star-2" type="radio"
											name="reviewStars" /> <label title="regular" for="star-2"></label>

										<input id="star-1" type="radio" name="reviewStars" /> <label
											title="poor" for="star-1"></label> <input id="star-0"
											type="radio" name="reviewStars" /> <label title="bad"
											for="star-0"></label>
									</div>
								</div>
							</div>
						</div>

						<!-- 카페후기 상세조회 이미지-->
						<div class="review_detail__center">
							<div class="review_detail_image">
								<div class="review_detail__image1">
									<c:forEach var="reviewImage" items="${imageList}">
										<a href="#"> <img
											src="download.do?path=${reviewImage.path}&sysname=${reviewImage.sysname}" />
										</a>
									</c:forEach>
								</div>
							</div>
						</div>

						<!-- 카페후기 상세조회 후기내용-->
						<div class="review_detail__content">
							<pre id="review_detail__content__text">
${reviewDetail.content}
			              </pre>
						</div>

						<!-- 추천하기 버튼 -->
						<div class="review_detail__recommendation">
							<button>추천하기</button>
						</div>
						<hr>
						<br>
						
						<!-- 댓글 등록 파트  -->
						<div class="commentRegistForm">
							<form method="GET" action="comment-regist.do">
								<input type="hidden" name="no" value="${reviewDetail.reviewNo}" />	
								<table width="70%">
								<tr>
									<td><textarea class="comment-content" name="content" rows="2" cols="70" placeholder="내용을 입력하세요"></textarea></td>
									<td><input type="submit" class="comment-btn" value="등록" /></td>
								</tr>	
								</table>
							</form>
						</div>
						
						<!-- 댓글 수정 삭제 -->
						<div id="commentList">
							<form action="comment-update.do" method="GET">
								<input type="hidden" name="no" value="${reviewDetail.reviewNo}" />
								<input type="hidden" name="commentNo" value="${param.commentNo}" />
								
							  <table width='80%' border='1'>
								<c:forEach var="comment" items="${commentNickname}">
								<c:choose>
							  		<c:when test="${param.commentNo eq comment.commentNo}">	
										<tr>
										  <td>
										  	<textarea name="content" rows="2" cols="60"><c:out value="${comment.content}" /></textarea>
										  
										  </td>
										  <td colspan="2">
										  	  <input type="submit" value="수정" />
										  	  <a href="review-detail.do?no=${comment.reviewNo}">취소</a>
										  </td>
										 </tr>
								 	</c:when>
								 	<c:otherwise>
										<tr>
										  <td>작성자 : <c:out value="${comment.member.nickname}" />&emsp;&emsp;</td>
										  <td><c:out value="${comment.content}" />&emsp;&emsp;&emsp;</td>
										  <td><fmt:formatDate value="${comment.regDate}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
										  <td>
										  	<c:if test="${comment.member.memNo == sessionScope.user.memNo}">
										  	  <a href="comment-delete.do?commentNo=${comment.commentNo}&no=${comment.reviewNo}">삭제</a>	
										  	  <a href="review-detail.do?commentNo=${comment.commentNo}&no=${comment.reviewNo}">수정</a>	
										  	</c:if>
										  </td>
										 </tr>
								 	</c:otherwise>
								 </c:choose>	
								 </c:forEach>
								 <c:if test="${empty commentNickname}">
								 <tr>
								    <td colspan='4'>댓글이 존재하지 않습니다.</td>
								 </tr>
							 	</c:if>
							 </table>
							</form>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 푸터 -->
	<%@ include file="../include/footer.jsp"%>
	<script src="../../resources/js/common/jquery-3.3.1.min.js"></script>
	<script src="../../resources/js/common/top_button.js"></script>
</body>
</html>
