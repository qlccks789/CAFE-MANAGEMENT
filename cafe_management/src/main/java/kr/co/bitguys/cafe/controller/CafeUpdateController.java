package kr.co.bitguys.cafe.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.bitguys.repository.dao.CafeMapper;
import kr.co.bitguys.common.db.MyAppSqlConfig;
import kr.co.bitguys.repository.vo.CafeVO;
import kr.co.bitguys.repository.vo.MemberVO;

@WebServlet("/view/cafe/update.do")
public class CafeUpdateController extends HttpServlet{
	private CafeMapper mapper;
	
	public CafeUpdateController() {
		mapper=MyAppSqlConfig.getSqlSession().getMapper(CafeMapper.class);
	}
	
	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

	
	CafeVO cafe=new CafeVO();
	cafe.setCafeNo(Integer.parseInt(request.getParameter("cafeNo")));
	cafe.setName(request.getParameter("name"));
	cafe.setAddress(request.getParameter("address"));
	cafe.setPhone(request.getParameter("phone"));
	cafe.setEmail(request.getParameter("email"));
	mapper.updateCafe(cafe);
	
	response.sendRedirect("list.do");
	
	}
}
