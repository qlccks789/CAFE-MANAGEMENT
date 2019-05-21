package kr.co.bitguys.goods.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.bitguys.common.db.MyAppSqlConfig;
import kr.co.bitguys.repository.dao.GoodsMapper;

@WebServlet("/view/goods/goods_delete_oper.do")
public class GoodsDeleteController extends HttpServlet{
	private GoodsMapper mapper;
	
	public GoodsDeleteController() {
		mapper = MyAppSqlConfig.getSqlSession().getMapper(GoodsMapper.class);
	}

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int goodsNo = Integer.parseInt(request.getParameter("no"));
		mapper.deleteGoodsByNo(goodsNo);
		
		response.sendRedirect("goods_list_oper.do");
	}
	
	
}
