package kr.co.bitguys.member.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import kr.co.bitguys.common.db.MyAppSqlConfig;
import kr.co.bitguys.repository.dao.ReviewMapper;
import kr.co.bitguys.repository.vo.MemberVO;
import kr.co.bitguys.repository.vo.ReviewVO;

@WebServlet("/view/member/memreview.do")
public class MypageMemReviewController extends HttpServlet{
	private ReviewMapper mapper;
	public MypageMemReviewController() {
		mapper = MyAppSqlConfig.getSqlSession().getMapper(ReviewMapper.class);
	}
	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		HttpSession session = request.getSession();
		MemberVO member = (MemberVO)session.getAttribute("user");
		List<ReviewVO> list =  mapper.selectBoardMemNo(member.getMemNo());
		PrintWriter out = response.getWriter();
		out.println(new Gson().toJson(list));
		out.close();
	}
	
}
