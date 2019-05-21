package kr.co.bitguys.cafe.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.bitguys.common.db.MyAppSqlConfig;
import kr.co.bitguys.repository.dao.ReviewMapper;

@WebServlet("/view/cafe/comment-delete.do")
public class CommentDeleteController extends HttpServlet {
	ReviewMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(ReviewMapper.class);
	
	public void service(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		mapper.deleteComment(Integer.parseInt(request.getParameter("commentNo")));
		response.sendRedirect("review-detail.do?no=" + Integer.parseInt(request.getParameter("no")));
	}
}
