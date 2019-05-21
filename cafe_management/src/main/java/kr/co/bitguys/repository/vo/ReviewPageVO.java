package kr.co.bitguys.repository.vo;

public class ReviewPageVO {
	private int pageNo = 1;  // 페이지번호는 디폴트를 1로 준다~!  1부터 시작하도록
	
	private int begin;
	private int end;
	
	public int getPageNo() {
		return pageNo;
	}
	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}
	public int getBegin() {
		return (this.pageNo - 1) * 12 + 1;  
	}
	public int getEnd() {
		return this.pageNo * 12;   // 1번목록에 마지막번호는 10 , 2번목록에 마지막번호는 20 ...
	}
}
