package kr.co.bitguys.goods.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.bitguys.common.db.MyAppSqlConfig;
import kr.co.bitguys.common.page.GoodsPageResult;
import kr.co.bitguys.repository.dao.GoodsMapper;
import kr.co.bitguys.repository.vo.GoodsPageVO;

@WebServlet("/view/goods/buy_main.do")
public class BuyMainController extends HttpServlet {

	private GoodsMapper mapper;
	
	public BuyMainController() {
		mapper = MyAppSqlConfig.getSqlSession().getMapper(GoodsMapper.class);
	}
	
	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		GoodsPageVO page = new GoodsPageVO();
		
		int pageNo = 1;
		int sort = 0;
		try {
			sort = Integer.parseInt(request.getParameter("sort"));
			System.out.println(sort);
			pageNo = Integer.parseInt(
					request.getParameter("pageNo"));
			System.out.println(pageNo);
		} catch (Exception e ) {
			
		}
		page.setSort(sort);
		page.setPageNO(pageNo);
		
		if (sort == 0 ) {
			request.setAttribute("list", mapper.selectGoods(page));
		} else {
			request.setAttribute("list", mapper.selectGoodsBySort(page));
		}

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
		request.setAttribute("sort", sort);
		request.setAttribute("pageNo", pageNo);
		
		request.setAttribute("imageList", mapper.selectImage());
		
		request.getRequestDispatcher("/view/goods/buy_main.jsp")
	           .forward(request, response);
	}

}
