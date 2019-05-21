package kr.co.bitguys.cafe.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.bitguys.repository.dao.CafeMapper;
import kr.co.bitguys.common.db.MyAppSqlConfig;

@WebServlet("/view/cafe/delete.do")
public class CafeDeleteController extends HttpServlet{

	private CafeMapper mapper;
	
	public CafeDeleteController() {
		mapper =MyAppSqlConfig.getSqlSession().getMapper(CafeMapper.class);
	}
	
	

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 데이터베이스 처리하기
		mapper.deleteCafe(Integer.parseInt(request.getParameter("cafeNo"))); 
		response.sendRedirect("list.do");
		
	
	
	}
}
