package kr.co.bitguys.cafe.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.bitguys.common.db.MyAppSqlConfig;
import kr.co.bitguys.repository.dao.ReviewMapper;
import kr.co.bitguys.repository.vo.CommentVO;
import kr.co.bitguys.repository.vo.MemberVO;

@WebServlet("/view/cafe/comment-regist.do")
public class CommentRegistController extends HttpServlet {
	ReviewMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(ReviewMapper.class);
	
	public void service(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
		
		int no = Integer.parseInt(request.getParameter("no"));
		
		CommentVO comment = new CommentVO();
		comment.setReviewNo(no);
		comment.setContent(request.getParameter("content"));
		
		HttpSession session = request.getSession();
		MemberVO member = (MemberVO)session.getAttribute("user");
		comment.setMemNo(member.getMemNo());
		
		mapper.insertComment(comment);
		
		response.sendRedirect("review-detail.do?no=" + no);
		
	}
}
