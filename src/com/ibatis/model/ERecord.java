package com.ibatis.model;

public class ERecord {
	private String Fid;//档案记录id
	private String FERID;//档案id
	private String FStudentID;//学生id
	private String FDate;//日期
	private String FTitle;
	private String FSubjectID;//科目
	private String FScoreM;//期中成绩
	private String FScoreE;//期末成绩
	private String FEvaluate;//评价
	private String fweek;//星期
	private String ftime;//时间
	
	public String getFid() {
		return Fid;
	}
	public void setFid(String fid) {
		Fid = fid;
	}
	public String getFERID() {
		return FERID;
	}
	public void setFERID(String fERID) {
		FERID = fERID;
	}
	
	public String getFStudentID() {
		return FStudentID;
	}
	public void setFStudentID(String fStudentID) {
		FStudentID = fStudentID;
	}
	public String getFDate() {
		return FDate;
	}
	public void setFDate(String fDate) {
		FDate = fDate;
	}
	public String getFTitle() {
		return FTitle;
	}
	public void setFTitle(String fTitle) {
		FTitle = fTitle;
	}
	public String getFSubjectID() {
		return FSubjectID;
	}
	public void setFSubjectID(String fSubjectID) {
		FSubjectID = fSubjectID;
	}
	public String getFScoreM() {
		return FScoreM;
	}
	public void setFScoreM(String fScoreM) {
		FScoreM = fScoreM;
	}
	public String getFScoreE() {
		return FScoreE;
	}
	public void setFScoreE(String fScoreE) {
		FScoreE = fScoreE;
	}
	public String getFEvaluate() {
		return FEvaluate;
	}
	public void setFEvaluate(String fEvaluate) {
		FEvaluate = fEvaluate;
	}
	public String getFweek() {
		return fweek;
	}
	public void setFweek(String fweek) {
		this.fweek = fweek;
	}
	public String getFtime() {
		return ftime;
	}
	public void setFtime(String ftime) {
		this.ftime = ftime;
	}
	
}
