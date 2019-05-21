package kr.co.bitguys.inquire.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.bitguys.common.db.MyAppSqlConfig;
import kr.co.bitguys.repository.dao.InquireMapper;
import kr.co.bitguys.repository.vo.InquireVO;
import kr.co.bitguys.repository.vo.MemberVO;

@WebServlet("/view/inquiry/pc_enroll.do")
public class EnrollInquireController extends HttpServlet {
		   private InquireMapper mapper;
		   public EnrollInquireController() {
				mapper = MyAppSqlConfig.getSqlSession().getMapper(InquireMapper.class);
			}
			
			@Override
			public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//				request.setCharacterEncoding("utf-8");
//				int inqNo = Integer.parseInt(request.getParameter("inqno"));
				InquireVO inquire = new InquireVO();
//				inquire.setInqNo(inqNo);
				inquire.setTitle(request.getParameter("title"));
				inquire.setContent(request.getParameter("content"));	
				HttpSession session = request.getSession();
				MemberVO member = (MemberVO)session.getAttribute("user");
				inquire.setMemNo(member.getMemNo());
				mapper.insertInquire(inquire);
				response.setContentType("text/html; charset=utf-8");
//				System.out.println(request.getParameter("inqno"));
				System.out.println(request.getParameter("title"));
				System.out.println(request.getParameter("content"));
				response.sendRedirect("pc_index.do");
				
			}
		}



