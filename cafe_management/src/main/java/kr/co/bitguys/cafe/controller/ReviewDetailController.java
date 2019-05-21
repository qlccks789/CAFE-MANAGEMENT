package kr.co.bitguys.cafe.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.bitguys.common.db.MyAppSqlConfig;
import kr.co.bitguys.repository.dao.ReviewMapper;
import kr.co.bitguys.repository.vo.CommentVO;
import kr.co.bitguys.repository.vo.MemberVO;
import kr.co.bitguys.repository.vo.ReviewImageVO;

@WebServlet("/view/cafe/review-detail.do")
public class ReviewDetailController extends HttpServlet {
	ReviewMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(ReviewMapper.class);
	
	public void service (HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		int no = Integer.parseInt(request.getParameter("no"));
		request.setAttribute("reviewDetail", mapper.selectDetailReview(no));
		
		List<ReviewImageVO> imageList = mapper.selectFilesByNo(no);
		request.setAttribute("imageList", imageList);
		
//		List<CommentVO> commentList = mapper.selectCommentByNo(no);
//		request.setAttribute("commentList", commentList);
		
		MemberVO member = mapper.selectUserNickname(no);
		request.setAttribute("member", member);
		
		List<CommentVO> commentNickname = mapper.selectCommentName(no);
		request.setAttribute("commentNickname", commentNickname);
		
		request.getRequestDispatcher("/view/cafe/review-detailselect.jsp").forward(request, response);
		
	}
}
