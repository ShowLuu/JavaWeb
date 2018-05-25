package com.bookshop.order;

public class BookBean {
	
	private String bId;
	private String bName;
	private int number;
	private String vr;
	public String getbId() {
		return bId;
	}
	public void setbId(String bId) {
		this.bId = bId;
	}
	public String getbName() {
		return bName;
	}
	public void setbName(String bName) {
		this.bName = bName;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public String getVr() {
		return vr;
	}
	public void setVr(String vr) {
		this.vr = vr;
	}
	@Override
	public String toString() {
		return "BookBean [bId=" + bId + ", bName=" + bName + ", number=" + number + ", vr=" + vr + "]";
	}
	
}
