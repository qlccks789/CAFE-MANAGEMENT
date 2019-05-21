package kr.co.bitguys.cafe.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.bitguys.common.db.MyAppSqlConfig;
import kr.co.bitguys.common.page.ReviewPageResult;
import kr.co.bitguys.repository.dao.ReviewMapper;
import kr.co.bitguys.repository.vo.ReviewPageVO;
import kr.co.bitguys.repository.vo.ReviewVO;

@WebServlet("/view/cafe/review-list.do")
public class ReviewListController extends HttpServlet {
	ReviewMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(ReviewMapper.class);
	
	public void service (HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		System.out.println("reach list Servlet");
		ReviewPageVO page = new ReviewPageVO();
		
		int pageNo = 1;
		try {
			pageNo = Integer.parseInt(
					request.getParameter("pageNo"));
			page.setPageNo(pageNo);
		} catch (Exception e ) {
			
		}
		
//		List<ReviewVO> list = mapper.selectBoardByNo(page);
		// 게시물 목록 가져오기
		request.setAttribute("reviewlist", mapper.selectBoardByNo(page));
		ReviewPageResult pageResult = new ReviewPageResult(pageNo, mapper.selectReviewCount());
		
		request.setAttribute("pageResult", pageResult);
		
		// 페이지 관련 작업 ------------------------------
		int count = mapper.selectReviewCount();
		int lastPage = (count%12 == 0) ? count / 12 : count / 12 + 1;
		
		// 요청한 페이지 번호에 해당하는 페이지 블럭 구하기
		int tabSize = 10;
		int currTab = (pageNo - 1) /tabSize + 1;	
		
		int beginPage = (currTab - 1) * tabSize + 1;
		int endPage = (currTab * tabSize > lastPage) ? lastPage : currTab * tabSize;
		
		boolean prev = beginPage != 1;
		boolean next = endPage != lastPage;
		
		request.setAttribute("beginPage", beginPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("prev", prev);
		request.setAttribute("next", next);
		request.setAttribute("count", count);
		request.setAttribute("lastPage", lastPage);
		
		System.out.println("out list Servlet");
		request.getRequestDispatcher("/view/cafe/review-main.jsp")
	           .forward(request, response);
	}
}
