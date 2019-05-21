package kr.co.bitguys.member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.bitguys.common.db.MyAppSqlConfig;
import kr.co.bitguys.repository.dao.MemberMapper;
import kr.co.bitguys.repository.vo.MemberVO;

@WebServlet("/view/member/emailcheck.do")
public class emailCheckController extends HttpServlet{
	
	private MemberMapper mapper;
	public emailCheckController() {
		mapper = MyAppSqlConfig.getSqlSession().getMapper(MemberMapper.class);
	}
	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		String email = request.getParameter("id");
		MemberVO member = mapper.selectMemberById(email);
		PrintWriter out = response.getWriter();
		if(member==null) {
			out.println("이 이메일을 사용할 수 있습니다.");
		}else {
			out.println("이미 사용중인 이메일이 존재합니다.");
		}
		out.close();
	}
	
}
