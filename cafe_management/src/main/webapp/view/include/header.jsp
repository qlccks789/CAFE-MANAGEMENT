<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<div class="header-top">
      <div class="container">
        <div class="header-top__title">
          <a href="/cafe_management/view/member/index.do">CAFE MANAGEMENT</a>
        </div>
        <div class="header-top__menu">
        <c:if test="${empty sessionScope.user}">
          <div class="header-top__login">
            <a href="/cafe_management/view/member/login.jsp">Login</a>
          </div>
          <div class="header-top__signup">
            <a href="/cafe_management/view/member/signup.jsp">Sign up</a>
          </div>
        </c:if>
        <c:if test="${not empty sessionScope.user}">
          <div class="header-top__logout">
            <a>${sessionScope.user.id}님 </a>
          </div>
          <div class="header-top__logout">
            <a href="/cafe_management/view/member/logout.do">Logout</a>
          </div>
          <div class="header-top__mypage">
            <a href="/cafe_management/view/member/mypage.jsp">My Page</a>
          </div>
        </c:if>
          <a href="#">
            <i class="fas fa-bars fa-2x"></i>
          </a>
        </div>
      </div>
    </div>
    <header>
      <div class="header-background">
        <div class="header-title">
          <div class="container">
            <div class="header-title__context">
              <a href="/cafe_management/view/member/index.do">
                <span class="header-title__text">
                  CAFE MANAGEMENT
                </span>
              </a>
            </div>
          </div>
        </div>
      </div>
      <nav class="header">
        <div class="container">
          <div class="header-nav">
            <div class="header-nav__menu">
              <div class="menu__dropdown">
                <a href="../cafe/cafe-search.jsp">카페</a>
                <div class="menu__dropdown-content">
                  <a class="dropdown-content__title" href="/cafe_management/view/cafe/list.do"">카페 조회</a>
                  <a class="dropdown-content__title" href="../cafe/cafe-register.jsp">카페 등록</a>
                  <a class="dropdown-content__title" href="/cafe_management/view/cafe/review-list.do">카페 후기</a>
                </div>
              </div>
              <div class="menu__dropdown">
                <a href="../goods/buy_main.jsp">상품</a>
                <div class="menu__dropdown-content">
                  <a class="dropdown-content__title" href="/cafe_management/view/goods/buy_main.do?pageNo=1&sort=0">
                    상품 판매 및 조회
                  </a>                  
                  <span><a href="/cafe_management/view/goods/buy_main.do?pageNo=1&sort=1">- 에스프레소 머신</a></span>
                  <span><a href="/cafe_management/view/goods/buy_main.do?pageNo=1&sort=2">- 캡슐</a></span>
                  <span><a href="/cafe_management/view/goods/buy_main.do?pageNo=1&sort=3">- 텀블러</a></span>
                  <a class="dropdown-content__title" href="../inquiry/pc_index.jsp">상품 문의</a>
                  <c:set var = "user" value="${sessionScope.user}" />
<%--                   <c:if test="${!empty user && fn:contains(user.manageAt, 'y')}"> --%>
                  <c:if test='${!empty user && user.manageAt += "" eq "y"}'>
	                  <a class="dropdown-content__title" href="../inquiry/pc_manager.jsp">관리자</a>
   		              <a id="goods_oper" class="dropdown-content__title" href="/cafe_management/view/goods/goods_list_oper.do">상품 관리자</a>
                  </c:if>          
                </div>
              </div>
            </div>
            <div class="header-nav__search">
              <i class="fas fa-search fa-lg"></i>
              <input type="text" placeholder="검색" />
            </div>
          </div>
        </div>
      </nav>
    </header>