package kr.co.bitguys.cafe.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;

import kr.co.bitguys.common.db.MyAppSqlConfig;
import kr.co.bitguys.common.review.file.FunnyFileRenamePolicy;
import kr.co.bitguys.repository.dao.ReviewMapper;
import kr.co.bitguys.repository.vo.MemberVO;
import kr.co.bitguys.repository.vo.ReviewImageVO;
import kr.co.bitguys.repository.vo.ReviewVO;

//view.cafe.controller
@WebServlet("/view/cafe/review-insert.do")
public class ReviewInsertController extends HttpServlet { 
	ReviewMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(ReviewMapper.class);
	
	public void service (HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String uploadRoot = "c:/bit2019/upload";
		SimpleDateFormat sdf = new SimpleDateFormat(
				"/yyyy/MM/dd"
		);
		
		String path = "/cafe-review-image" + sdf.format(new Date());
		File file = new File(uploadRoot + path);
		if (file.exists() == false) file.mkdirs();
		MultipartRequest mRequest = new MultipartRequest(
				request, 
				uploadRoot + path, //  
				1024 * 1024 * 100,  // 
				"utf-8", // 
				new FunnyFileRenamePolicy()
				);
		ReviewVO review = new ReviewVO();
		review.setName(mRequest.getParameter("review-insert__title-input"));
		review.setContent(mRequest.getParameter("review-insert__content-input"));
		review.setRatingStar(3);
		
		HttpSession session = request.getSession();
		MemberVO member = (MemberVO)session.getAttribute("user");
		review.setMemNo(member.getMemNo());
		mapper.insertReview(review);
		
		Enumeration<String> fNames = mRequest.getFileNames();
		while (fNames.hasMoreElements()) {
			String parameter = (String)fNames.nextElement();
//			String name = "attach";
//			File f = mRequest.getFile(name);
			String orgName = mRequest.getOriginalFileName(parameter);
			String systemName = mRequest.getFilesystemName(parameter);
			if (orgName == null) continue;
			if (orgName != null) {
				ReviewImageVO reviewImageVO = new ReviewImageVO();
				reviewImageVO.setReviewNo(review.getReviewNo());
				reviewImageVO.setPath(path);
				reviewImageVO.setOrgname(orgName);
				reviewImageVO.setSysname(systemName);
				mapper.insertReviewImage(reviewImageVO);
			}
		}
		
		response.sendRedirect("review-list.do");
	}
}