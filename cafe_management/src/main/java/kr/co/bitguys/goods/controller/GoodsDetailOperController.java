package kr.co.bitguys.goods.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.bitguys.common.db.MyAppSqlConfig;
import kr.co.bitguys.repository.dao.GoodsMapper;
import kr.co.bitguys.repository.vo.GoodsImageVO;
import kr.co.bitguys.repository.vo.GoodsVO;

@WebServlet("/view/goods/goods_detail_oper.do")
public class GoodsDetailOperController extends HttpServlet{
	
	private GoodsMapper mapper;
	
	public GoodsDetailOperController() {
		mapper = MyAppSqlConfig.getSqlSession().getMapper(GoodsMapper.class);
	}

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int no = Integer.parseInt(request.getParameter("no"));
		GoodsVO good = mapper.selectGoodsByNo(no);
		request.setAttribute("good", good);
		
		List<GoodsImageVO> images = mapper.selectImageByNo(no);
		request.setAttribute("images", images);
		
		request.getRequestDispatcher("/view/goods/goods_detail_oper.jsp")
		.forward(request, response);
		
	}
	
	
	
}
