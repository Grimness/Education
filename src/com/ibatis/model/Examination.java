package com.ibatis.model;

public class Examination {
private int fid;
private String FChapter;
private String FLesson;
private String fname;
private String FDESC;
private String fsettime;
private String fscore;
private String FQRCode;
private int FExamID;
public int getFid() {
	return fid;
}
public void setFid(int fid) {
	this.fid = fid;
}
public String getFChapter() {
	return FChapter;
}
public void setFChapter(String fChapter) {
	FChapter = fChapter;
}
public String getFLesson() {
	return FLesson;
}
public void setFLesson(String fLesson) {
	FLesson = fLesson;
}
public String getFname() {
	return fname;
}
public void setFname(String fname) {
	this.fname = fname;
}
public String getFDESC() {
	return FDESC;
}
public void setFDESC(String fDESC) {
	FDESC = fDESC;
}
public String getFsettime() {
	return fsettime;
}
public void setFsettime(String fsettime) {
	this.fsettime = fsettime;
}
public String getFscore() {
	return fscore;
}
public void setFscore(String fscore) {
	this.fscore = fscore;
}
public String getFQRCode() {
	return FQRCode;
}
public void setFQRCode(String fQRCode) {
	FQRCode = fQRCode;
}
public int getFExamID() {
	return FExamID;
}
public void setFExamID(int fExamID) {
	FExamID = fExamID;
}

}
