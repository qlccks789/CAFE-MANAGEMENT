package kr.co.bitguys.repository.dao;

import java.util.List;

import kr.co.bitguys.repository.vo.CafeVO;

public interface CafeMapper {
		
	/** 전체 목록 가져오기 */
	public List<CafeVO> selectCafe();
	
	
	/** 상세 정보 가져오기 */
	public CafeVO selectCafeByNo(int cafeNo);
	
	
	/** 까페등록 */
	public void insertCafe(CafeVO cafe);
	
	/** 까페수정*/
	public void updateCafe(CafeVO cafe);
	
	
	/** 까페삭제*/
	public void deleteCafe(int cafeNo);
	
	
	
}
