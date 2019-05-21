package kr.co.bitguys.repository.vo;

public class GoodsImageVO {
	private int imageNo;
	private String sysname;
	private String orgname;
	private int goodsNo;
	private String path;
	private int preImage;
	public int getImageNo() {
		return imageNo;
	}
	public void setImageNo(int imageNo) {
		this.imageNo = imageNo;
	}
	public int getPreImage() {
		return preImage;
	}
	public void setPreImage(int preImage) {
		this.preImage = preImage;
	}
	public String getSysname() {
		return sysname;
	}
	public void setSysname(String sysname) {
		this.sysname = sysname;
	}
	public String getOrgname() {
		return orgname;
	}
	public void setOrgname(String orgname) {
		this.orgname = orgname;
	}
	public int getGoodsNo() {
		return goodsNo;
	}
	public void setGoodsNo(int goodsNo) {
		this.goodsNo = goodsNo;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
}
