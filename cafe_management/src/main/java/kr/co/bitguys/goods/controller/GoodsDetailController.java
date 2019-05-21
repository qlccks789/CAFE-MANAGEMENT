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

@WebServlet("/view/goods/goods_detail.do")
public class GoodsDetailController extends HttpServlet {
	
	private GoodsMapper mapper;
	
	public GoodsDetailController () {
		mapper = MyAppSqlConfig.getSqlSession().getMapper(GoodsMapper.class);
	}

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		
		int no = Integer.parseInt(request.getParameter("no"));
		
		mapper.updateViewCnt(no);
		request.setAttribute("goods", mapper.selectGoodsByNo(no));
		List<GoodsImageVO> images = mapper.selectImageByNo(no);
		request.setAttribute("images", images);
		
		request.getRequestDispatcher("/view/goods/goods_detail.jsp")
		.forward(request, response);
	}

}
