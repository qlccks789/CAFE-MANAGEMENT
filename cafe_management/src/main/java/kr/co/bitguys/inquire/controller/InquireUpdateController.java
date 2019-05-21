package kr.co.bitguys.inquire.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.bitguys.common.db.MyAppSqlConfig;
import kr.co.bitguys.repository.dao.InquireMapper;
import kr.co.bitguys.repository.vo.InquireVO;


@WebServlet("/view/inquiry/pc_update.do")
public class InquireUpdateController extends HttpServlet {
	
	private InquireMapper mapper;
	
	public InquireUpdateController() {
		mapper = MyAppSqlConfig.getSqlSession().getMapper(InquireMapper.class);
	}
	
	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		InquireVO inquire = new InquireVO();
		inquire.setInqNo(Integer.parseInt(request.getParameter("inqNo")));
		inquire.setTitle(request.getParameter("title"));
		inquire.setGoodsNo(Integer.parseInt(request.getParameter("goodsNo")));
		inquire.setContent(request.getParameter("content"));
		System.out.println(request.getParameter("title"));
		System.out.println(request.getParameter("content"));
		mapper.updateInquire(inquire);

		response.sendRedirect("pc_detail.do?inqNo=" + Integer.parseInt(request.getParameter("inqNo")));
	}
}