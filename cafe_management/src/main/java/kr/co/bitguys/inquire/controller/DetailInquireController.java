package kr.co.bitguys.inquire.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.bitguys.common.db.MyAppSqlConfig;
import kr.co.bitguys.repository.dao.InquireMapper;

@WebServlet("/view/inquiry/pc_detail.do")
public class DetailInquireController extends HttpServlet {

   private InquireMapper mapper;
   
   public DetailInquireController() {
      mapper = MyAppSqlConfig.getSqlSession().getMapper(InquireMapper.class);
   }
   @Override
   public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {   
      response.setContentType("text/html; charset=utf-8");
      int no = Integer.parseInt(request.getParameter("no"));
      mapper.updateViewCnt(no); 
      request.setAttribute("inquireDetail", mapper.selectInquireByNo(no)); 
      request.getRequestDispatcher("/view/inquiry/pc_detail.jsp").forward(request, response);      
   }
}