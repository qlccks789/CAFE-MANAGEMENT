package kr.co.bitguys.inquire.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.bitguys.common.db.MyAppSqlConfig;
import kr.co.bitguys.repository.dao.InquireMapper;


@WebServlet("/view/inquiry/pc_delete.do")
public class InquireDeleteController extends HttpServlet {
	
	private InquireMapper mapper;
	
	public InquireDeleteController() {
		mapper = MyAppSqlConfig.getSqlSession().getMapper(InquireMapper.class);
	}
	
	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		mapper.Inquiredelete(Integer.parseInt(request.getParameter("inqNo"))); 
		response.sendRedirect("pc_list.do"); 
	}
}
