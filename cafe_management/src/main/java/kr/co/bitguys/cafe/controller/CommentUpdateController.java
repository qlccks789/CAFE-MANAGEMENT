package kr.co.bitguys.cafe.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.bitguys.common.db.MyAppSqlConfig;
import kr.co.bitguys.repository.dao.ReviewMapper;
import kr.co.bitguys.repository.vo.CommentVO;

@WebServlet("/view/cafe/comment-update.do")
public class CommentUpdateController extends HttpServlet {
	ReviewMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(ReviewMapper.class);
	
	public void service(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		CommentVO comment = new CommentVO();
		comment.setContent(request.getParameter("content"));
		comment.setCommentNo(Integer.parseInt(request.getParameter("commentNo")));
		mapper.updateComment(comment);
		
		response.sendRedirect("review-detail.do?no=" + Integer.parseInt(request.getParameter("no")));
	}
}
