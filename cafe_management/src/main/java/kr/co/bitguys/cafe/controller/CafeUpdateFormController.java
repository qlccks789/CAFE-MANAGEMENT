package kr.co.bitguys.cafe.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.bitguys.repository.dao.CafeMapper;
import kr.co.bitguys.common.db.MyAppSqlConfig;

@WebServlet("/view/cafe/updateform.do")
public class CafeUpdateFormController extends HttpServlet{

	private CafeMapper mapper;
	
	public CafeUpdateFormController() {
		mapper=MyAppSqlConfig.getSqlSession().getMapper(CafeMapper.class);
		
	}
	
	@Override
	public void service(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
		
		request.setAttribute(
				"cafe",mapper.selectCafeByNo(
					Integer.parseInt(request.getParameter("cafeNo"))
						)
				);
		request.getRequestDispatcher("/view/cafe/cafe-modify.jsp")
				.forward(request,response);
		
		
	}
	
}
