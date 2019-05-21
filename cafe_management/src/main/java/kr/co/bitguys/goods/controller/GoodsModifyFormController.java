package kr.co.bitguys.goods.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.bitguys.common.db.MyAppSqlConfig;
import kr.co.bitguys.repository.dao.GoodsMapper;

@WebServlet("/view/goods/goods_modifyform_oper.do")
public class GoodsModifyFormController extends HttpServlet{
	private GoodsMapper mapper;
	
	public GoodsModifyFormController() {
		mapper = MyAppSqlConfig.getSqlSession().getMapper(GoodsMapper.class);
	}

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("goodsNo", request.getParameter("no"));
		
		request.getRequestDispatcher("/view/goods/goods_modify.jsp")
		.forward(request, response);
		
	}
	
}
