package kr.co.bitguys.cafe.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.bitguys.repository.dao.CafeMapper;
import kr.co.bitguys.common.db.MyAppSqlConfig;

@WebServlet("/view/cafe/detail.do")
public class CafedetailController extends HttpServlet {

	private CafeMapper mapper;
	
	public CafedetailController() {
		mapper = MyAppSqlConfig.getSqlSession().getMapper(CafeMapper.class);
	}
	
	@Override
	public void service(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
	int cafeNo=Integer.parseInt(request.getParameter("cafeNo"));
	request.setAttribute("cafe",mapper.selectCafeByNo(cafeNo));
	request.getRequestDispatcher("cafe-detail.jsp")
		   .forward(request,response);
	}
}
