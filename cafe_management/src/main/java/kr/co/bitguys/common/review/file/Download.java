// 파일 다운로드를 수행하는 클래스
package kr.co.bitguys.common.review.file;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/view/cafe/download.do")
public class Download extends HttpServlet {

	public void service (HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		// 파라미터 정보 추출하기
		// path(저장된 파일의 경로), name(실제 저장된 파일이름)
		String uploadRoot = "c:/bit2019/upload";
		
		
		String path = request.getParameter("path");
		String name = request.getParameter("sysname");
		String dName = request.getParameter("dname");  // 다운로드할 파일 이름
//		System.out.println("path : " + path);
//		System.out.println("name : " + name);
		
		// 파일을 읽기 위해서는 File 클래스에 접근해야한다.
		File f = new File(uploadRoot + path, name);
			
		if (dName == null) {
			response.setHeader("Content-Type", "image/jpg");  // 브라우저에게 전송하는 데이터를 해석하도록 하는 정보
		} else {
			response.setHeader("Content-Type", "application/octet-stream");  // 브라우저가 해석해서 다운로드 받아라
			
			dName = new String(dName.getBytes("utf-8"), "8859_1");  // 다운로드 할 때 dname 이 한글이면 인식을 못하는 것을 인식하도록 하는 것
			response.setHeader("Content-Disposition", "attachment;filename=" + dName); 
			
		}
		
		// 파일을 읽고 쓸 준비하기.
		// 파일을 읽고 사용자에게 전송      f 를 읽겠다. FileInputStream
		// 속도증가 시키자 BufferedInputStream
		try {
			FileInputStream fis = new FileInputStream(f);
			BufferedInputStream bis = new BufferedInputStream(fis);
			
			// 사용자에게 전송할 아웃풋을 생성
			OutputStream out = response.getOutputStream();
			BufferedOutputStream bos = new BufferedOutputStream(out);
			
			while (true) {
				int ch = bis.read();	// bis 읽자 ~~ 파일을
				if (ch == -1) break;	// -1이면 읽을게없다. 그럼 나가자
				
				bos.write(ch);   // 읽은 내용을 write 해주기
			}
			
			// close 해주기
			bis.close();  fis.close();
			bos.close();  out.close();
			
		} catch (Exception e) {

		}
		
	}
}
