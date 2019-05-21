<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="refresh" content="2; url=pc_list.do">
     <%@ include file="../include/include_style.jsp" %>
    <title>문의 글삭제</title>
  </head>

  <body>
    <%@ include file="../include/header.jsp" %>
    <div class="pccontainer">
      <div class="pcmc">문의 정보 삭제</div>
    </div>
    <table id="tableDesign">
      <caption>
        전체조회
      </caption>
      <tr>
        <th><span>번호</span></th>
        <th><span>제목</span></th>
        <th><span>분류</span></th>
        <th><span>등록일</span></th>
        <th><span>선택항목</span></th>
      </tr>
      <tr>
        <td class="pcNo">1</td>
        <td class="leftstyle">캡슐이 뚫리지 않아 추출이 불가 합니다.</td>
        <td>에스프레소머신</td>
        <td>2018/04/12</td>
        <td>
          <button input type="button" value="view" class="btnView">수정</button
          >&nbsp
          <button input type="button" value="view" class="btnView">
            <a href="pc_contents1.html">삭제</a>
          </button>
        </td>
      </tr>
<!--       <tr> -->
<!--         <td class="pcNo">2</td> -->
<!--         <td class="leftstyle">커피 추출시 머신 바닥으로 물이 새요.</td> -->
<!--         <td>에스프레소머신</td> -->
<!--         <td>2018/04/25</td> -->
<!--         <td> -->
<!--           <button input type="button" value="view" class="btnView">수정</button -->
<!--           >&nbsp -->
<!--           <button input type="button" value="view" class="btnView"> -->
<!--             <a href="pc_contents2.html">삭제</a> -->
<!--           </button> -->
<!--         </td> -->
<!--       </tr> -->
<!--       <tr> -->
<!--         <td class="pcNo">3</td> -->
<!--         <td class="leftstyle">커피머신별로 사용법에 차이가 있나요?</td> -->
<!--         <td>에스프레소머신</td> -->
<!--         <td>2018/12/31</td> -->
<!--         <td> -->
<!--           <button input type="button" value="view" class="btnView">수정</button -->
<!--           >&nbsp -->
<!--           <button -->
<!--             input -->
<!--             type="button" -->
<!--             value="view" -->
<!--             class="btnView" -->
<!--             onclick="alert('문의정보를 삭제합니다.')" -->
<!--           > -->
<!--             <a href="#">삭제</a> -->
<!--           </button> -->
<!--         </td> -->
<!--       </tr> -->
<!--       <tr> -->
<!--         <td class="pcNo">4</td> -->
<!--         <td class="leftstyle"> -->
<!--           밀크프로더를 연속해서 사용하려고 하는데 작동이 되지 않아요? -->
<!--         </td> -->
<!--         <td>에스프레소머신</td> -->
<!--         <td>2019/02/12</td> -->
<!--         <td> -->
<!--           <button input type="button" value="view" class="btnView">수정</button -->
<!--           >&nbsp -->
<!--           <button -->
<!--             input -->
<!--             type="button" -->
<!--             value="view" -->
<!--             class="btnView" -->
<!--             onclick="alert('문의정보를 삭제합니다.')" -->
<!--           > -->
<!--             <a href="#">삭제</a> -->
<!--           </button> -->
<!--         </td> -->
<!--       </tr> -->
<!--       <tr> -->
<!--         <td class="pcNo">5</td> -->
<!--         <td class="leftstyle"> -->
<!--           머신을 초기상태로 돌리려면 어떻게 해야 하나요? -->
<!--         </td> -->
<!--         <td>에스프레소머신</td> -->
<!--         <td>2019/03/23</td> -->
<!--         <td> -->
<!--           <button input type="button" value="view" class="btnView">수정</button -->
<!--           >&nbsp -->
<!--           <button -->
<!--             input -->
<!--             type="button" -->
<!--             value="view" -->
<!--             class="btnView" -->
<!--             onclick="alert('문의정보를 삭제합니다.')" -->
<!--           > -->
<!--             <a href="#">삭제</a> -->
<!--           </button> -->
<!--         </td> -->
<!--       </tr> -->
<!--       <tr> -->
<!--         <td class="pcNo">6</td> -->
<!--         <td class="leftstyle"> -->
<!--           에스프레소캡슐과 브루커피캡슐의 차이는 무엇인가요? -->
<!--         </td> -->
<!--         <td>에스프레소캡슐</td> -->
<!--         <td>2018/05/15</td> -->
<!--         <td> -->
<!--           <button input type="button" value="view" class="btnView">수정</button -->
<!--           >&nbsp -->
<!--           <button input type="button" value="view" class="btnView"> -->
<!--             <a href="pc_contents3.html">삭제</a> -->
<!--           </button> -->
<!--         </td> -->
<!--       </tr> -->
<!--       <tr> -->
<!--         <td class="pcNo">7</td> -->
<!--         <td class="leftstyle"> -->
<!--           미디움로스팅, 다크로스팅, 룽고, 디카페인 캡슐 커피의 차이는 뭔가요? -->
<!--         </td> -->
<!--         <td>에스프레소캡슐</td> -->
<!--         <td>2018/06/30</td> -->
<!--         <td> -->
<!--           <button input type="button" value="view" class="btnView">수정</button -->
<!--           >&nbsp -->
<!--           <button input type="button" value="view" class="btnView"> -->
<!--             <a href="#">삭제</a> -->
<!--           </button> -->
<!--         </td> -->
<!--       </tr> -->
<!--       <tr> -->
<!--         <td class="pcNo">8</td> -->
<!--         <td class="leftstyle"> -->
<!--           18 Filter capsule MEDIUM ROAST 가격은 얼마인가요? -->
<!--         </td> -->
<!--         <td>에스프레소캡슐</td> -->
<!--         <td>2019/01/31</td> -->
<!--         <td> -->
<!--           <button input type="button" value="view" class="btnView">수정</button -->
<!--           >&nbsp -->
<!--           <button input type="button" value="view" class="btnView"> -->
<!--             <a href="#">삭제</a> -->
<!--           </button> -->
<!--         </td> -->
<!--       </tr> -->
<!--       <tr> -->
<!--         <td class="pcNo">9</td> -->
<!--         <td class="leftstyle"> -->
<!--           과테말라와 브라질 원두캡슐 가격은 각각 얼마인가요? -->
<!--         </td> -->
<!--         <td>에스프레소캡슐</td> -->
<!--         <td>2019/02/08</td> -->
<!--         <td> -->
<!--           <button input type="button" value="view" class="btnView">수정</button -->
<!--           >&nbsp -->
<!--           <button input type="button" value="view" class="btnView"> -->
<!--             <a href="#">삭제</a> -->
<!--           </button> -->
<!--         </td> -->
<!--       </tr> -->
<!--       <tr> -->
<!--         <td class="pcNo">10</td> -->
<!--         <td class="leftstyle">에스프레소캡슐은 100% 원두로 만드나요?</td> -->
<!--         <td>에스프레소캡슐</td> -->
<!--         <td>2019/03/21</td> -->
<!--         <td> -->
<!--           <button input type="button" value="view" class="btnView">수정</button -->
<!--           >&nbsp -->
<!--           <button input type="button" value="view" class="btnView"> -->
<!--             <a href="#">삭제</a> -->
<!--           </button> -->
<!--         </td> -->
<!--       </tr> -->
<!--       <tr> -->
<!--         <td class="pcNo">11</td> -->
<!--         <td class="leftstyle"> -->
<!--           19 Cherry blossom floating coldcup 473ml는 가격이 얼마인가요? -->
<!--         </td> -->
<!--         <td>텀블러</td> -->
<!--         <td>2018/08/20</td> -->
<!--         <td> -->
<!--           <button input type="button" value="view" class="btnView">수정</button -->
<!--           >&nbsp -->
<!--           <button input type="button" value="view" class="btnView"> -->
<!--             <a href="pc_contents4.html">삭제</a> -->
<!--           </button> -->
<!--         </td> -->
<!--       </tr> -->
<!--       <tr> -->
<!--         <td class="pcNo">12</td> -->
<!--         <td class="leftstyle"> -->
<!--           SS 리저브 화이트 더블월 머그 355ml보다 더 큰 것도 있나요? -->
<!--         </td> -->
<!--         <td>텀블러</td> -->
<!--         <td>2018/10/28</td> -->
<!--         <td> -->
<!--           <button input type="button" value="view" class="btnView">수정</button -->
<!--           >&nbsp -->
<!--           <button input type="button" value="view" class="btnView"> -->
<!--             <a href="#">삭제</a> -->
<!--           </button> -->
<!--         </td> -->
<!--       </tr> -->
<!--       <tr> -->
<!--         <td class="pcNo">13</td> -->
<!--         <td class="leftstyle"> -->
<!--           일리 로고 에스프레소 컵 세트 구성이 어떻게 되나요? -->
<!--         </td> -->
<!--         <td>텀블러</td> -->
<!--         <td>2018/11/23</td> -->
<!--         <td> -->
<!--           <button input type="button" value="view" class="btnView">수정</button -->
<!--           >&nbsp -->
<!--           <button input type="button" value="view" class="btnView"> -->
<!--             <a href="#">삭제</a> -->
<!--           </button> -->
<!--         </td> -->
<!--       </tr> -->
<!--       <tr> -->
<!--         <td class="pcNo">14</td> -->
<!--         <td class="leftstyle">GILLO DORFLES는 출시년도가 언제인가요?</td> -->
<!--         <td>텀블러</td> -->
<!--         <td>2019/01/12</td> -->
<!--         <td> -->
<!--           <button input type="button" value="view" class="btnView">수정</button -->
<!--           >&nbsp -->
<!--           <button input type="button" value="view" class="btnView"> -->
<!--             <a href="#">삭제</a> -->
<!--           </button> -->
<!--         </td> -->
<!--       </tr> -->
<!--       <tr> -->
<!--         <td class="pcNo">15</td> -->
<!--         <td class="leftstyle"> -->
<!--           SS 레나 스튜던트 워터보틀 591ml는 한정판인가요? -->
<!--         </td> -->
<!--         <td>텀블러</td> -->
<!--         <td>2019/03/24</td> -->
<!--         <td> -->
<!--           <button input type="button" value="view" class="btnView">수정</button -->
<!--           >&nbsp -->
<!--           <button input type="button" value="view" class="btnView"> -->
<!--             <a href="#">삭제</a> -->
<!--           </button> -->
<!--         </td> -->
<!--       </tr> -->
<!--       <tr> -->
<!--         <td class="pcNo">16</td> -->
<!--         <td class="leftstyle">A/S 접수할 때 주의사항이 있나요?</td> -->
<!--         <td>기타문의</td> -->
<!--         <td>2018/03/22</td> -->
<!--         <td> -->
<!--           <button input type="button" value="view" class="btnView">수정</button -->
<!--           >&nbsp -->
<!--           <button input type="button" value="view" class="btnView"> -->
<!--             <a href="#">삭제</a> -->
<!--           </button> -->
<!--         </td> -->
<!--       </tr> -->
<!--       <tr> -->
<!--         <td class="pcNo">17</td> -->
<!--         <td class="leftstyle">사이렌오더란 무엇인가요?</td> -->
<!--         <td>기타문의</td> -->
<!--         <td>2018/07/09</td> -->
<!--         <td> -->
<!--           <button input type="button" value="view" class="btnView">수정</button -->
<!--           >&nbsp -->
<!--           <button input type="button" value="view" class="btnView"> -->
<!--             <a href="pc_contents5.html">삭제</a> -->
<!--           </button> -->
<!--         </td> -->
<!--       </tr> -->
<!--       <tr> -->
<!--         <td class="pcNo">18</td> -->
<!--         <td class="leftstyle">모바일 상품권도 사용이 가능한가요?</td> -->
<!--         <td>기타문의</td> -->
<!--         <td>2019/01/18</td> -->
<!--         <td> -->
<!--           <button input type="button" value="view" class="btnView">수정</button -->
<!--           >&nbsp; -->
<!--           <button input type="button" value="view" class="btnView"> -->
<!--             <a href="#">삭제</a> -->
<!--           </button> -->
<!--         </td> -->
<!--       </tr> -->
<!--       <tr> -->
<!--         <td class="pcNo">19</td> -->
<!--         <td class="leftstyle">왜 매장마다 선택할 수 있는 항목이 다른가요?</td> -->
<!--         <td>기타문의</td> -->
<!--         <td>2019/02/25</td> -->
<!--         <td> -->
<!--           <button input type="button" value="view" class="btnView">수정</button -->
<!--           >&nbsp -->
<!--           <button input type="button" value="view" class="btnView"> -->
<!--             <a href="#">삭제</a> -->
<!--           </button> -->
<!--         </td> -->
<!--       </tr> -->
<!--       <tr> -->
<!--         <td class="pcNo">20</td> -->
<!--         <td class="leftstyle">대량구매도 가능한가요?</td> -->
<!--         <td>기타문의</td> -->
<!--         <td>2019/03/19</td> -->
<!--         <td> -->
          <button input type="button" value="view" class="btnView">수정</button
          >&nbsp
          <button input type="button" value="view" class="btnView">
            <a href="#">삭제</a>
          </button>
<!--         </td> -->
<!--       </tr> -->
    </table>

    <hr />
    <nav id="pageNav">
      <ul>
        <li><a href="#">이전</a></li>
        <li><a href="pc_contents1.html">1</a></li>
        <li><a href="pc_contents2.html">2</a></li>
        <li><a href="pc_contents3.html">3</a></li>
        <li><a href="pc_contents4.html">4</a></li>
        <li><a href="pc_contents5.html">5</a></li>
        <li><a href="#">다음</a></li>
      </ul>
    </nav>
    <br />
    <%@ include file="../include/footer.jsp" %>
    <script src="../../resources/js/common/jquery-3.3.1.min.js"></script>
    <script src="../../resources/js/common/top_button.js"></script>
  </body>
</html>
