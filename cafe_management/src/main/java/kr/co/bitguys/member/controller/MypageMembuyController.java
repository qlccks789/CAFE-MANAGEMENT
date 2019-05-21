package kr.co.bitguys.member.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import kr.co.bitguys.common.db.MyAppSqlConfig;
import kr.co.bitguys.repository.dao.GoodsMapper;
import kr.co.bitguys.repository.vo.InquireVO;
import kr.co.bitguys.repository.vo.MemberVO;

@WebServlet("/view/member/membuy.do")
public class MypageMembuyController extends HttpServlet{
	
	private GoodsMapper mapper;
	public MypageMembuyController() {
		// TODO Auto-generated constructor stub
		mapper = MyAppSqlConfig.getSqlSession().getMapper(GoodsMapper.class);
	}
	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	
}
