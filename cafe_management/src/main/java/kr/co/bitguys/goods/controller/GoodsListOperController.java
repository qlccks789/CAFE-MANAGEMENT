package kr.co.bitguys.goods.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.bitguys.common.db.MyAppSqlConfig;
import kr.co.bitguys.common.page.GoodsPageResult;
import kr.co.bitguys.repository.dao.GoodsMapper;
import kr.co.bitguys.repository.vo.GoodsPageVO;
import kr.co.bitguys.repository.vo.GoodsVO;

@WebServlet("/view/goods/goods_list_oper.do")
public class GoodsListOperController extends HttpServlet{
	
	private GoodsMapper mapper;
	
	public GoodsListOperController () {
		mapper = MyAppSqlConfig.getSqlSession().getMapper(GoodsMapper.class);
	}

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		GoodsPageVO page = new GoodsPageVO();
		
		int pageNo = 1;
		try {
			pageNo = Integer.parseInt(
					request.getParameter("pageNo"));
			System.out.println(pageNo);
		} catch (Exception e ) {
			
		}
		page.setPageNO(pageNo);
		
		request.setAttribute("list", mapper.selectGoods(page));
		GoodsPageResult pageResult = new GoodsPageResult(pageNo, mapper.selectGoodsCount());
		
		request.setAttribute("pageResult", pageResult);
		
		int count = mapper.selectGoodsCount();
		int lastPage = (count%8 == 0) ? count / 8 : count / 8 + 1;
		
		int tabSize = 10;
		int currTab = (pageNo - 1) /tabSize + 1;
		
		int beginPage = (currTab - 1) * tabSize + 1;
		int endPage = (currTab * tabSize > lastPage) ? lastPage : currTab * tabSize;
		
		boolean prev = beginPage != 1;
		boolean next = endPage != lastPage;
		
		request.setAttribute("beginPage", beginPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("prev", prev);
		request.setAttribute("next", next);
		request.setAttribute("count", count);
		request.setAttribute("lastPage", lastPage);
		
		request.getRequestDispatcher("/view/goods/goods_list_oper.jsp")
		.forward(request, response);
	}

}
