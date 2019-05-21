package kr.co.bitguys.inquire.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.bitguys.common.db.MyAppSqlConfig;
import kr.co.bitguys.common.page.PageResult;
import kr.co.bitguys.repository.dao.InquireMapper;
import kr.co.bitguys.repository.vo.InquirePageVO;

@WebServlet("/view/inquiry/pc_list.do")
public class ListInquireController extends HttpServlet {
	private InquireMapper mapper;
	   public ListInquireController() {
			mapper = MyAppSqlConfig.getSqlSession().getMapper(InquireMapper.class);
		}	
		@Override
		public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			InquirePageVO inquire = new InquirePageVO();
			SimpleDateFormat sdf = new SimpleDateFormat(
					"/yyyy/MM/dd"
			);
			int pageNo = 1;
		    System.out.println("start");
	        try {
	        	pageNo = Integer.parseInt(request.getParameter("inqNo"));        
	        	inquire.setPageNo(pageNo);
	        } catch(Exception e) {      
				request.setAttribute("list", mapper.selectInquire(inquire));
				request.setAttribute("pageResult", new PageResult(pageNo, mapper.selectInquireCount()));
				response.setContentType("text/html; charset=utf-8");
				int count = mapper.selectInquireCount();
				int lastPage = (count%5 == 0) ? count / 5 : count / 5 + 1;
				
				// 요청한 페이지 번호에 해당하는 페이지 블럭 구하기
				int tabSize = 5;
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
				request.getRequestDispatcher("pc_list.jsp").forward(request, response);
		    } 
		}
	}

