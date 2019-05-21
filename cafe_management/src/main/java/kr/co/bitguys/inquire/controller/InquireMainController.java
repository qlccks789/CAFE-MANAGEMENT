package kr.co.bitguys.inquire.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.bitguys.common.db.MyAppSqlConfig;
import kr.co.bitguys.common.page.PageResult;
import kr.co.bitguys.repository.dao.InquireMapper;
import kr.co.bitguys.repository.vo.InquirePageVO;


@WebServlet("/view/inquiry/pc_index.do")
public class InquireMainController extends HttpServlet{
  private InquireMapper mapper;
	
	public InquireMainController() {
		mapper = MyAppSqlConfig.getSqlSession().getMapper(InquireMapper.class);
	}
	
	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    InquirePageVO page = new InquirePageVO();
	    int pageNo = 1;
        try { 
        	pageNo = Integer.parseInt(request.getParameter("pageNo"));        
        	page.setPageNo(pageNo);
        } catch(Exception e) { }
	    
		request.setAttribute("list", mapper.selectInquire(page));
		request.setAttribute("pageResult", new PageResult(pageNo, mapper.selectInquireCount()));
	
		response.setContentType("text/html; charset=utf-8");
		request.getRequestDispatcher("/view/inquiry/pc_index.jsp").forward(request, response);
	}
}

