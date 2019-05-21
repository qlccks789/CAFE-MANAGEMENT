package kr.co.bitguys.cafe.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.bitguys.repository.dao.CafeMapper;
import kr.co.bitguys.common.db.MyAppSqlConfig;

@WebServlet("/view/cafe/list.do")
public class CafeListController extends HttpServlet {

	private CafeMapper mapper;
	
	public CafeListController() {
		mapper=MyAppSqlConfig.getSqlSession().getMapper(CafeMapper.class);
		
	}
	
	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	// 게시물 목록 가져오기
		request.setAttribute("list",mapper.selectCafe());
		request.getRequestDispatcher("/view/cafe/cafe-search.jsp")
			   .forward(request, response);
				
		
		
		
}
}


