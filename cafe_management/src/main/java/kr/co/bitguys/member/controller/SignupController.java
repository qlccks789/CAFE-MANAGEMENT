package kr.co.bitguys.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.bitguys.common.db.MyAppSqlConfig;
import kr.co.bitguys.common.util.SHA256Util;
import kr.co.bitguys.repository.dao.MemberMapper;
import kr.co.bitguys.repository.vo.MemberVO;

@WebServlet("/view/member/signup.do")
public class SignupController extends HttpServlet{
	
	private MemberMapper mapper;
	
	public SignupController() {
		mapper = MyAppSqlConfig.getSqlSession().getMapper(MemberMapper.class);
	}
	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		MemberVO member = new MemberVO();
		member.setId(request.getParameter("id"));
		
		// 암호화 시킨후 DB에 저장.(salt 포함)
		String salt = SHA256Util.generateSalt();
        String newPassword = SHA256Util.getEncrypt(request.getParameter("pass"), salt);
        member.setPass(newPassword);
        member.setSalt(salt);
		
		member.setName(request.getParameter("name"));
		member.setNickname(request.getParameter("nickname"));
		member.setPhone(request.getParameter("phone"));
		member.setBasicAddr(request.getParameter("roadAddrPart1"));
		member.setDetailAddr(request.getParameter("addrDetail"));
		member.setPostcode(request.getParameter("zipNo"));
		mapper.insertMember(member);
		
		response.sendRedirect("index.do?signupflag=1");
	}
	
}
