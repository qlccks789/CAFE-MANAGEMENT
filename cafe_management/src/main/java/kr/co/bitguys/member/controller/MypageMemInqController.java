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
import kr.co.bitguys.repository.dao.InquireMapper;
import kr.co.bitguys.repository.vo.InquireVO;
import kr.co.bitguys.repository.vo.MemberVO;

@WebServlet("/view/member/meminq.do")
public class MypageMemInqController extends HttpServlet{
	
	private InquireMapper mapper;
	public MypageMemInqController() {
		mapper = MyAppSqlConfig.getSqlSession().getMapper(InquireMapper.class);
	}
	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		HttpSession session = request.getSession();
		MemberVO member = (MemberVO)session.getAttribute("user");
		List<InquireVO> list =  mapper.selectInquireMemNo(member.getMemNo());
		System.out.println(list.size());
		PrintWriter out = response.getWriter();
		out.println(new Gson().toJson(list));
		out.close();
	}
	
}
