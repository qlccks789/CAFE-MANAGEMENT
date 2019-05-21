package kr.co.bitguys.member.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import kr.co.bitguys.common.db.MyAppSqlConfig;
import kr.co.bitguys.repository.dao.GoodsMapper;
import kr.co.bitguys.repository.vo.GoodsVO;

@WebServlet("/view/member/maingoods.do")
public class MainGoodsController extends HttpServlet{
	private GoodsMapper gMapper;
	public MainGoodsController() {
		gMapper = MyAppSqlConfig.getSqlSession().getMapper(GoodsMapper.class);
	}
	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		List<GoodsVO> list = gMapper.selectGoodsMain();
//		request.setAttribute("goodslist", gMapper.selectGoodsMain());
		PrintWriter out = response.getWriter();
		out.println(new Gson().toJson(list));
		out.close();
	}
	
}
