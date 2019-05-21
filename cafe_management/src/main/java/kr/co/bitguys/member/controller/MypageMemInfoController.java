package kr.co.bitguys.member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import kr.co.bitguys.repository.vo.MemberVO;

@WebServlet("/view/member/meminfo.do")
public class MypageMemInfoController extends HttpServlet{
	
	public MypageMemInfoController() {
		
	}

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		HttpSession session = request.getSession();
		MemberVO member = (MemberVO)session.getAttribute("user");
		System.out.println(member.getMemNo());
		System.out.println(member.getName());
		request.setAttribute("member", member);
		PrintWriter out = response.getWriter();
		out.println(new Gson().toJson(member));
		out.close();
	}
	
}
