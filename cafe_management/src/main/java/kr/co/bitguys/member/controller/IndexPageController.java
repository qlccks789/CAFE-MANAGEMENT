package kr.co.bitguys.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.bitguys.common.db.MyAppSqlConfig;
import kr.co.bitguys.repository.dao.InquireMapper;
import kr.co.bitguys.repository.dao.ReviewMapper;
import kr.co.bitguys.repository.vo.InquirePageVO;
import kr.co.bitguys.repository.vo.ReviewPageVO;

@WebServlet("/view/member/index.do")
public class IndexPageController extends HttpServlet{
	
	private ReviewMapper rMapper;
	private InquireMapper iMapper;
	
	public IndexPageController() {
		rMapper = MyAppSqlConfig.getSqlSession().getMapper(ReviewMapper.class);
		iMapper = MyAppSqlConfig.getSqlSession().getMapper(InquireMapper.class);
	}

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ReviewPageVO rPage = new ReviewPageVO();
		InquirePageVO iPage = new InquirePageVO();
		request.setAttribute("reviewlist", rMapper.selectBoardByNo(rPage));
		request.setAttribute("inquirelist", iMapper.selectInquire(iPage));
		if(request.getAttribute("loginflag") != null) {
			request.setAttribute("loginflag", request.getAttribute("loginflag"));	
		}
		if(request.getAttribute("loginoutflag") != null) {
			request.setAttribute("loginoutflag", request.getAttribute("loginoutflag"));			
		}
		if(request.getAttribute("signupflag") != null) {
			request.setAttribute("signupflag", request.getAttribute("signupflag"));			
		}
		request.getRequestDispatcher("/view/member/index.jsp")
        .forward(request, response);
	}
	
}
