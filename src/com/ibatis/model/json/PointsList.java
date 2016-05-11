package com.ibatis.model.json;

public class PointsList {

	private int fid;//积分记录id
	private int fphone;//家长、教师id
	private String fpoint;//积分数
	private String fsource;//积分来源

	public int getFid() {
		return fid;
	}
	public void setFid(int fid) {
		this.fid = fid;
	}
	
	public int getFphone() {
		return fphone;
	}
	public void setFphone(int fphone) {
		this.fphone = fphone;
	}
	public String getFpoint() {
		return fpoint;
	}
	public void setFpoint(String fpoint) {
		this.fpoint = fpoint;
	}
	public String getFsource() {
		return fsource;
	}
	public void setFsource(String fsource) {
		this.fsource = fsource;
	}

	
	
}
