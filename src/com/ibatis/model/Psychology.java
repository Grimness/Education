package com.ibatis.model;

public class Psychology {
	private int FId;//自增
	
	private String FTitle;//标题
	private String FName;//联系人姓名
	private String FContactPhone;//联系电话
	private String FPhone;//注册时电话
	private String FConsultingContent1;//咨询内容
	private String FConsultingContent2;//咨询内容
	private String FConsultingContent3;//咨询内容
	private String FPicture1;//图片地址
	private String FPicture2;//图片地址
	public Psychology() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Psychology(int fId, String fTitle, String fName,
			String fContactPhone, String fPhone, String fConsultingContent1,
			String fConsultingContent2, String fConsultingContent3,
			String fPicture1, String fPicture2) {
		super();
		FId = fId;
		FTitle = fTitle;
		FName = fName;
		FContactPhone = fContactPhone;
		FPhone = fPhone;
		FConsultingContent1 = fConsultingContent1;
		FConsultingContent2 = fConsultingContent2;
		FConsultingContent3 = fConsultingContent3;
		FPicture1 = fPicture1;
		FPicture2 = fPicture2;
	}
	public int getFId() {
		return FId;
	}
	public void setFId(int fId) {
		FId = fId;
	}
	public String getFTitle() {
		return FTitle;
	}
	public void setFTitle(String fTitle) {
		FTitle = fTitle;
	}
	public String getFName() {
		return FName;
	}
	public void setFName(String fName) {
		FName = fName;
	}
	public String getFContactPhone() {
		return FContactPhone;
	}
	public void setFContactPhone(String fContactPhone) {
		FContactPhone = fContactPhone;
	}
	public String getFPhone() {
		return FPhone;
	}
	public void setFPhone(String fPhone) {
		FPhone = fPhone;
	}
	public String getFConsultingContent1() {
		return FConsultingContent1;
	}
	public void setFConsultingContent1(String fConsultingContent1) {
		FConsultingContent1 = fConsultingContent1;
	}
	public String getFConsultingContent2() {
		return FConsultingContent2;
	}
	public void setFConsultingContent2(String fConsultingContent2) {
		FConsultingContent2 = fConsultingContent2;
	}
	public String getFConsultingContent3() {
		return FConsultingContent3;
	}
	public void setFConsultingContent3(String fConsultingContent3) {
		FConsultingContent3 = fConsultingContent3;
	}
	public String getFPicture1() {
		return FPicture1;
	}
	public void setFPicture1(String fPicture1) {
		FPicture1 = fPicture1;
	}
	public String getFPicture2() {
		return FPicture2;
	}
	public void setFPicture2(String fPicture2) {
		FPicture2 = fPicture2;
	}
	
	

	

}
