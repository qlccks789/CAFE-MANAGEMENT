package kr.co.bitguys.repository.vo;

import java.util.Date;
import java.util.List;

public class ReviewVO {
	private int reviewNo;
	private String name;
	private Date regDate;
	private int ratingStar;
	private String content;
	private int viewCnt;
	private int memNo;
	private List<ReviewImageVO> imageList;
	
	public List<ReviewImageVO> getImageList() {
		return imageList;
	}
	public void setImageList(List<ReviewImageVO> imageList) {
		this.imageList = imageList;
	}
	public int getReviewNo() {
		return reviewNo;
	}
	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public int getRatingStar() {
		return ratingStar;
	}
	public void setRatingStar(int ratingStar) {
		this.ratingStar = ratingStar;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getViewCnt() {
		return viewCnt;
	}
	public void setViewCnt(int viewCnt) {
		this.viewCnt = viewCnt;
	}
	public int getMemNo() {
		return memNo;
	}
	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}
	
}
