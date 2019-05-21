package kr.co.bitguys.goods.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;

import kr.co.bitguys.common.db.MyAppSqlConfig;
import kr.co.bitguys.common.goods.file.GoodsFunnyFileRenamePolicy;
import kr.co.bitguys.repository.dao.GoodsMapper;
import kr.co.bitguys.repository.vo.GoodsImageVO;
import kr.co.bitguys.repository.vo.GoodsVO;

@WebServlet("/view/goods/goods_insert_oper.do")
public class GoodsInsertController extends HttpServlet{
	private GoodsMapper mapper;
	
	public GoodsInsertController() {
		mapper = MyAppSqlConfig.getSqlSession().getMapper(GoodsMapper.class);
	}

	@Override
	public void service(HttpServletRequest request, 
		HttpServletResponse response) throws ServletException, IOException {
//		request.setCharacterEncoding("utf-8");
//		String sort = null;
/*		switch (Integer.parseInt(request.getParameter("sort"))) {
		case 1 :
			sort = "/espresso machine";
		case 2 :
			sort = "/espresso capsule";
		case 3 :
			sort = "/tumbler";
		}*/

		String uploadRoot = "/Users/sinsolmalo/Desktop/eclipse/cafe-management/cafe_management/src/main/webapp/resources/images";
		uploadRoot = request.getServletContext().getRealPath("/resources/images");
		SimpleDateFormat sdf = new SimpleDateFormat(
				"/yyyy/MM/dd"
		);
		String path = "/goods" + sdf.format(new Date());
		File file = new File(uploadRoot + path);
		if (file.exists() == false) file.mkdirs();
		
		MultipartRequest mRequest = new MultipartRequest(
				request, 
				uploadRoot + path, //  
				1024 * 1024 * 100,  // 
				"utf-8", // 
				new GoodsFunnyFileRenamePolicy()
		);
		
		GoodsVO goods = new GoodsVO();
		goods.setSort(Integer.parseInt(mRequest.getParameter("sort")));
		goods.setSerialNo(mRequest.getParameter("serial_no"));
		goods.setName(mRequest.getParameter("name"));
		goods.setTitle(mRequest.getParameter("title"));
		goods.setPrice(Integer.parseInt(mRequest.getParameter("price")));
		goods.setManufacturer(mRequest.getParameter("manufacturer"));
		goods.setCountry(mRequest.getParameter("country"));
		goods.setGoodsInfo(mRequest.getParameter("goods_info"));
		goods.setDeliveryInfo(mRequest.getParameter("delivery_info"));
		goods.setChangeInfo(mRequest.getParameter("change_info"));
		goods.setDeliveryPrice(Integer.parseInt(mRequest.getParameter("delivery_price")));
		goods.setStack(Integer.parseInt(mRequest.getParameter("stack")));
		mapper.insertGoods(goods);
		int goodsNo = mapper.selectLastGoodsNo();
		
		String name = "file_attach";
		File f = mRequest.getFile(name);
		if (f != null) {
			String orgname = mRequest.getOriginalFileName(name);
			String sysname = mRequest.getFilesystemName(name);
			
			// 데이터베이스에 파일 정보 저장
			GoodsImageVO image = new GoodsImageVO();
			image.setGoodsNo(goodsNo);
			image.setPath(path);
			image.setOrgname(orgname);
			image.setSysname(sysname);
			image.setPreImage(1);
			mapper.insertGoodsImage(image);
		}
		
		String name2 = "file_attach2";
		File f2 = mRequest.getFile(name2);
		if (f2 != null) {
			String orgname2 = mRequest.getOriginalFileName(name2);
			String sysname2 = mRequest.getFilesystemName(name2);
			
			// 데이터베이스에 파일 정보 저장
			GoodsImageVO image2 = new GoodsImageVO();
			image2.setGoodsNo(goodsNo);
			image2.setPath(path);
			image2.setOrgname(orgname2);
			image2.setSysname(sysname2);
			image2.setPreImage(2);
			mapper.insertGoodsImage(image2);
		}
		
		
		response.sendRedirect("goods_detail_oper.do?no=" + goodsNo);
	}
	
	
}
