package com.ibatis.model;

public class Evaluation {
	private String fid;
	private String fdate;//日期
	private String ftitle;//标题
	private String fstudentid;//学生ID
	private String fevatype;//评测项目
	private String fevakey;//关键指标
	private String fevaluation;//评价
	public String getFid() {
		return fid;
	}
	public void setFid(String fid) {
		this.fid = fid;
	}
	public String getFdate() {
		return fdate;
	}
	public void setFdate(String fdate) {
		this.fdate = fdate;
	}
	public String getFtitle() {
		return ftitle;
	}
	public void setFtitle(String ftitle) {
		this.ftitle = ftitle;
	}
	public String getFstudentid() {
		return fstudentid;
	}
	public void setFstudentid(String fstudentid) {
		this.fstudentid = fstudentid;
	}
	public String getFevatype() {
		return fevatype;
	}
	public void setFevatype(String fevatype) {
		this.fevatype = fevatype;
	}
	public String getFevakey() {
		return fevakey;
	}
	public void setFevakey(String fevakey) {
		this.fevakey = fevakey;
	}
	public String getFevaluation() {
		return fevaluation;
	}
	public void setFevaluation(String fevaluation) {
		this.fevaluation = fevaluation;
	}
	
	
}
