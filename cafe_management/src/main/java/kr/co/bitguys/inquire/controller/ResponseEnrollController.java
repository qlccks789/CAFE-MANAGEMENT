//package kr.co.bitguys.inquire.controller;
//
//import java.io.IOException;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import kr.co.bitguys.common.db.MyAppSqlConfig;
//import kr.co.bitguys.repository.dao.InquireMapper;
//import kr.co.bitguys.repository.vo.ResponseVO;
//
//@WebServlet("view/inquiry/responseenroll.do")
//public class ResponseEnrollController extends HttpServlet {
//
//	private InquireMapper mapper;
//	
//	public ResponseEnrollController() {
//		mapper = MyAppSqlConfig.getSqlSession().getMapper(InquireMapper.class);
//	}
//	
//	@Override
//	public void doPost(
//			HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//		int inqNo = Integer.parseInt(request.getParameter("inqno"));
//		
//		// 게시판과 파일 테이블에 저장할 글번호를 조회
////		ResponseVO response = new ResponseVO();
////		response.setContent(request.getParameter("content"));
//		
//		
//		
////		mapper.insertResponse(response);
//		
//		((HttpServletResponse) response).sendRedirect("detail.do?no=" + inqNo);
//	}
//}		
//
//
//
//
//
//
//
//
//
//
//
//
