package kr.co.bitguys.repository.dao;

import java.util.List;

import kr.co.bitguys.repository.vo.InquirePageVO;
import kr.co.bitguys.repository.vo.InquireVO;

public interface InquireMapper {
    public List<InquireVO> selectInquire(InquirePageVO page);
    public int selectInquireCount();
    public InquireVO selectInquireByNo(int inqNo);
    public void insertInquire(InquireVO inquire);
	public void updateViewCnt(int inqNo);
	public void Inquiredelete(int inqNo);
	public void updateInquire(InquireVO inquire);
	public List<InquireVO>selectInquiresByNo(int inqNo);
//	public void insertResponse(ResponseVO response);
//	List<ResponseVO> selectResponsesByNo(int no);
	public List<InquireVO> selectInquireMemNo(int no);
}
