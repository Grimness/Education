package com.ibatis.model.json;

public class Points {

	private int fid;//积分记录id
	private String fphone;//家长、教师电话
	private String fpoints;//积分数
	public int getFid() {
		return fid;
	}
	public void setFid(int fid) {
		this.fid = fid;
	}
	
	public String getFphone() {
		return fphone;
	}
	public void setFphone(String fphone) {
		this.fphone = fphone;
	}
	public String getFpoints() {
		return fpoints;
	}
	public void setFpoints(String fpoints) {
		this.fpoints = fpoints;
	}
	
}
