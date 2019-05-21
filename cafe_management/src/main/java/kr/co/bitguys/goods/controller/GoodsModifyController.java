package kr.co.bitguys.goods.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;

import kr.co.bitguys.common.db.MyAppSqlConfig;
import kr.co.bitguys.common.goods.file.GoodsFunnyFileRenamePolicy;
import kr.co.bitguys.repository.dao.GoodsMapper;
import kr.co.bitguys.repository.vo.GoodsImageVO;
import kr.co.bitguys.repository.vo.GoodsVO;

@WebServlet("/view/goods/goods_modify_oper.do")
public class GoodsModifyController extends HttpServlet{
	private GoodsMapper mapper;
	
	public GoodsModifyController() {
		mapper = MyAppSqlConfig.getSqlSession().getMapper(GoodsMapper.class);
	}

	@Override
	public void service(HttpServletRequest request, 
		HttpServletResponse response) throws ServletException, IOException {

		GoodsVO goods = new GoodsVO();
		System.out.println(request.getParameter("nono"));
		int goodsNo = Integer.parseInt(request.getParameter("nono"));
		goods.setGoodsNo(goodsNo);
		goods.setSort(Integer.parseInt(request.getParameter("sort")));
		goods.setSerialNo(request.getParameter("serial_no"));
		goods.setName(request.getParameter("name"));
		goods.setTitle(request.getParameter("title"));
		goods.setPrice(Integer.parseInt(request.getParameter("price")));
		goods.setManufacturer(request.getParameter("manufacturer"));
		goods.setCountry(request.getParameter("country"));
		goods.setGoodsInfo(request.getParameter("goods_info"));
		goods.setDeliveryInfo(request.getParameter("delivery_info"));
		goods.setChangeInfo(request.getParameter("change_info"));
		goods.setDeliveryPrice(Integer.parseInt(request.getParameter("delivery_price")));
		goods.setStack(Integer.parseInt(request.getParameter("stack")));
		mapper.updateGoodsByNo(goods);
		
		
		response.sendRedirect("goods_detail_oper.do?no=" + goodsNo);
	}
	
	
}
