package com.ibatis.model;

public class Practice {
	private String FId;
	private String FDate;//日期
	private String week;
	private String time;
	private String FContent;
	private String FStudentID;
	private String FPhoto1;
	private String FPhoto2;
	private String FPhoto3;
	private String FPhoto4;
	private String FPhone;
	private String fsex;//编辑活动人性别
	private String ftype;//编辑活动人类型

	
	public String getFId() {
		return FId;
	}
	public void setFId(String fId) {
		FId = fId;
	}
	public String getFDate() {
		return FDate;
	}
	public void setFDate(String fDate) {
		FDate = fDate;
	}
	public String getFContent() {
		return FContent;
	}
	public void setFContent(String fContent) {
		FContent = fContent;
	}
	public String getFStudentID() {
		return FStudentID;
	}
	public void setFStudentID(String fStudentID) {
		FStudentID = fStudentID;
	}
	public String getFPhoto1() {
		return FPhoto1;
	}
	public void setFPhoto1(String fPhoto1) {
		FPhoto1 = fPhoto1;
	}
	public String getFPhoto2() {
		return FPhoto2;
	}
	public void setFPhoto2(String fPhoto2) {
		FPhoto2 = fPhoto2;
	}
	public String getFPhoto3() {
		return FPhoto3;
	}
	public void setFPhoto3(String fPhoto3) {
		FPhoto3 = fPhoto3;
	}
	public String getFPhoto4() {
		return FPhoto4;
	}
	public void setFPhoto4(String fPhoto4) {
		FPhoto4 = fPhoto4;
	}
	public String getFPhone() {
		return FPhone;
	}
	public void setFPhone(String fPhone) {
		FPhone = fPhone;
	}
	public String getFsex() {
		return fsex;
	}
	public void setFsex(String fsex) {
		this.fsex = fsex;
	}
	public String getFtype() {
		return ftype;
	}
	public void setFtype(String ftype) {
		this.ftype = ftype;
	}
	public String getWeek() {
		return week;
	}
	public void setWeek(String week) {
		this.week = week;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	
	
}
