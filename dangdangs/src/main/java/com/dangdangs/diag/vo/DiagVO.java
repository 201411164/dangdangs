package com.dangdangs.diag.vo;

import java.util.List;

public class DiagVO {

	private int dage;
	private String spcode;
	private List<String> syname;
	
	public int getDage() {
		return dage;
	}
	public void setDage(int dage) {
		this.dage = dage;
	}
	public String getSpcode() {
		return spcode;
	}
	public void setSpcode(String spcode) {
		this.spcode = spcode;
	}
	public List<String> getSyname() {
		return syname;
	}
	public void setSyname(List<String> syname) {
		this.syname = syname;
	}
	@Override
	public String toString() {
		return "DiagVO [dage=" + dage + ", spcode=" + spcode + ", syname=" + syname + "]";
	}
	
	
}
