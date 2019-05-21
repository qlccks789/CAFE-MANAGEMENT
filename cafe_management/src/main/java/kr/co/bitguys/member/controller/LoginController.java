package kr.co.bitguys.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.bitguys.common.db.MyAppSqlConfig;
import kr.co.bitguys.common.util.SHA256Util;
import kr.co.bitguys.repository.dao.MemberMapper;
import kr.co.bitguys.repository.vo.MemberVO;

@WebServlet("/view/member/login.do")
public class LoginController extends HttpServlet{
	
	private MemberMapper mapper;
	
	public LoginController() {
		mapper = MyAppSqlConfig.getSqlSession().getMapper(MemberMapper.class);
	}
	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("login.do 도착");
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		
		MemberVO member = mapper.selectMemberById(id);
		if(member == null) {
			System.out.println("null값임!	");
			response.sendRedirect("/cafe_management/view/member/login.jsp?idflag=1");
			return;
		}
		System.out.println(member.getBasicAddr());
		System.out.println(member.getNickname());
		System.out.println(member.getSalt());
		String memberSalt = member.getSalt();
		MemberVO user = null;
		if(member.getSalt() == null) {
			member.setPass(pass);
			user = mapper.selectLogin(member);
		}else {
	        String newPassword = SHA256Util.getEncrypt(pass, memberSalt);
	        if(newPassword.equals(member.getPass())) {
	        	System.out.println("비밀번호 맞음!");
	        	user = member;
	        }
		}
		
		// 사용자 입력이 정확하지 않다.
		if(user == null) {
			System.out.println("login 안됨");
			response.sendRedirect("/cafe_management/view/member/login.jsp?loginflag=1");
			return;
		}
		// 로그인 성공 처리 해야 한다.
		// 세션에 사용자 정보를 등록시킨다.
		
		HttpSession session = request.getSession();
		session.setAttribute("user", user);
		
		response.sendRedirect("/cafe_management/view/member/index.do?loginflag=1");
	}
	
}
