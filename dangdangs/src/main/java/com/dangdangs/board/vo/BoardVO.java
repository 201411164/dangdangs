package com.dangdangs.board.vo;

public class BoardVO {

	private int bno;
	private String dname, bsum, bcause, btreat, bcare, bdate;
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	public String getBsum() {
		return bsum;
	}
	public void setBsum(String bsum) {
		this.bsum = bsum;
	}
	public String getBcause() {
		return bcause;
	}
	public void setBcause(String bcause) {
		this.bcause = bcause;
	}
	public String getBtreat() {
		return btreat;
	}
	public void setBtreat(String btreat) {
		this.btreat = btreat;
	}
	public String getBcare() {
		return bcare;
	}
	public void setBcare(String bcare) {
		this.bcare = bcare;
	}
	public String getBdate() {
		return bdate;
	}
	public void setBdate(String bdate) {
		this.bdate = bdate;
	}
	@Override
	public String toString() {
		return "BoardVO [bno=" + bno + ", dname=" + dname + ", bsum=" + bsum + ", bcause=" + bcause + ", btreat="
				+ btreat + ", bcare=" + bcare + ", bdate=" + bdate + "]";
	}
	
}
