package kr.co.bitguys.repository.vo;

public class GoodsPageVO {
	private int pageNO = 1;
	
	private int sort;

	private int begin;
	private int end;
	public int getPageNO() {
		return pageNO;
	}
	public void setPageNO(int pageNO) {
		this.pageNO = pageNO;
	}
	public int getSort() {
		return sort;
	}
	public void setSort(int sort) {
		this.sort = sort;
	}
	public int getBegin() {
		return (this.pageNO -1) * 8 + 1;
	}
	public int getEnd() {
		return this.pageNO * 8;
	}


	
}
