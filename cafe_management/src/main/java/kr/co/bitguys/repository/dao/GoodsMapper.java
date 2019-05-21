package kr.co.bitguys.repository.dao;

import java.util.List;

import kr.co.bitguys.repository.vo.GoodsImageVO;
import kr.co.bitguys.repository.vo.GoodsPageVO;
import kr.co.bitguys.repository.vo.GoodsVO;

public interface GoodsMapper {
	public List<GoodsImageVO> selectImage();
	public List<GoodsVO> selectGoods(GoodsPageVO page);
	
	public int selectGoodsCount();
	public GoodsVO selectGoodsByNo(int no);
	public List<GoodsImageVO> selectImageByNo(int no);
	public void updateViewCnt(int no);
	public List<GoodsVO>selectGoodsBySort(GoodsPageVO page);
	public void deleteGoodsByNo(int no);
	public void insertGoods(GoodsVO goods);
	public int selectLastGoodsNo();
	public void insertGoodsImage(GoodsImageVO image);
	public void updateGoodsByNo(GoodsVO goods);
	public List<GoodsVO> selectGoodsMain();
}














