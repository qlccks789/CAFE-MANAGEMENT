package kr.co.bitguys.cafe.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/view/cafe/writingform.do")
public class CafeWriteFormController extends HttpServlet {
	@Override
	public void service(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/view/cafe/cafe-register.jsp")
			   .forward(request,response);
		
		
	}
	
	
	
}
