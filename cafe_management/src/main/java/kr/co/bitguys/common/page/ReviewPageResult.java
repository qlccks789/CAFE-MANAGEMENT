package kr.co.bitguys.common.page;

public class ReviewPageResult {
	int pageNo;
	int count;
	int beginPage;
	int endPage;
	boolean prev;
	boolean next;
	
	public ReviewPageResult(int pageNo, int count) {
		this.pageNo = pageNo;
		this.count = count;
		setPageInfo();
	}
	private void setPageInfo() {
		// 페이지 관련 작업 --------------------------------------------------------
		// 페이지 수 구하기..  전체 게시물 에서 페이지당 표시할 게시물 수를 나눠서 나머지가 0이면 페이지가 딱 맞아떨어지고, 나머지가있다면 페이지를 한장 늘려줘야한다.
		int lastPage = (count % 12 == 0) ? count / 12 
										 : count / 12 + 1;
		
		// 요청한 페이지 번호에 해당하는 페이지 블락 구하기
		int tabSize = 10;
		int currTab = (pageNo - 1) / tabSize + 1;
		beginPage = (currTab -1 ) * tabSize + 1;
		endPage = (currTab * tabSize > lastPage) ? lastPage
													 : currTab * tabSize; 
		
		// 이전페이지, 다음페이지에 게시물이 있는지 체크하고 넘겨줘야함..
		// 1페이지일땐 이전페이지로 더이상 갈 수 없다..  마지막페이지일땐 다음페이지로 갈 수없다..
		prev = beginPage != 1;
		next = endPage != lastPage;

	}
	public int getPageNo() {
		return pageNo;
	}
	public int getCount() {
		return count;
	}
	public int getBeginPage() {
		return beginPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public boolean isPrev() {
		return prev;
	}
	public boolean isNext() {
		return next;
	}
}