package kr.co.bitguys.cafe.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.bitguys.common.db.MyAppSqlConfig;
import kr.co.bitguys.repository.dao.CafeMapper;
import kr.co.bitguys.repository.vo.CafeVO;
import kr.co.bitguys.repository.vo.MemberVO;

@WebServlet("/view/cafe/writing.do")
public class CafeWriteController extends HttpServlet {
	private CafeMapper mapper;
	
	public CafeWriteController() {
		mapper = MyAppSqlConfig.getSqlSession().getMapper(CafeMapper.class);
	}
	
	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

	HttpSession session = request.getSession();
	MemberVO member = (MemberVO)session.getAttribute("user");
	//파라미터 정보를 읽어 데이터베이스에 저장하기
	// 로그인 안되있는 경우
	// member : null
	
	// 로그인 되어있을 경우
	CafeVO cafe = new CafeVO();
	cafe.setMemNo(member.getMemNo());
	cafe.setName(request.getParameter("name"));
	cafe.setAddress(request.getParameter("address"));
	cafe.setPhone(request.getParameter("phone"));
	cafe.setEmail(request.getParameter("email"));
	cafe.setIntro(request.getParameter("intro"));
	mapper.insertCafe(cafe);
	
	response.sendRedirect("list.do");
	
	}
	
	
}
