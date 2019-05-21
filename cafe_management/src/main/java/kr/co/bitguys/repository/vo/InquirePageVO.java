package kr.co.bitguys.repository.vo;

public class InquirePageVO {

private int pageNo = 1;

public int getPageNo() {
	return pageNo;
}
public void setPageNo(int pageNO) {
	this.pageNo = pageNO;
}
public int getBegin() {
	return (this.pageNo -1)*5 + 1;
}
public int getEnd() {
	return  this.pageNo *5;
}

}
