package com.ibatis.model;

public class SubMessage {
private int fid;
private int FParentID;
private String FNumber;
private String FName;
private String FDesc;
public int getFid() {
	return fid;
}
public void setFid(int fid) {
	this.fid = fid;
}
public int getFParentID() {
	return FParentID;
}
public void setFParentID(int fParentID) {
	FParentID = fParentID;
}
public String getFNumber() {
	return FNumber;
}
public void setFNumber(String fNumber) {
	FNumber = fNumber;
}
public String getFName() {
	return FName;
}
public void setFName(String fName) {
	FName = fName;
}
public String getFDesc() {
	return FDesc;
}
public void setFDesc(String fDesc) {
	FDesc = fDesc;
}
}
