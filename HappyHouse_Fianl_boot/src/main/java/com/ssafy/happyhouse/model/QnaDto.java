package com.ssafy.happyhouse.model;

public class QnaDto {
	private int qid;
	private String qtitle;
	private String qcontent;
	private String qdate;
	private int qviews;
	private String qwriter;
	
	public QnaDto() {
	}
	public QnaDto(String qtitle, String qcontent,int qviews, String qwriter) {
		this.qtitle = qtitle;
		this.qcontent = qcontent;
		this.qviews = qviews;
		this.qwriter = qwriter;
	}
	public QnaDto(int qid, String qtitle, String qcontent, String qdate, int qviews, String qwriter) {
		this.qid = qid;
		this.qtitle = qtitle;
		this.qcontent = qcontent;
		this.qdate = qdate;
		this.qviews = qviews;
		this.qwriter = qwriter;
	}
	public int getQid() {
		return qid;
	}
	public void setQid(int qid) {
		this.qid = qid;
	}
	public String getQtitle() {
		return qtitle;
	}
	public void setQtitle(String qtitle) {
		this.qtitle = qtitle;
	}
	public String getQcontent() {
		return qcontent;
	}
	public void setQcontent(String qcontent) {
		this.qcontent = qcontent;
	}
	public String getQdate() {
		return qdate;
	}
	public void setQdate(String qdate) {
		this.qdate = qdate;
	}
	public int getQviews() {
		return qviews;
	}
	public void setQviews(int qviews) {
		this.qviews = qviews;
	}
	public String getQwriter() {
		return qwriter;
	}
	public void setQwriter(String qwriter) {
		this.qwriter = qwriter;
	}
	@Override
	public String toString() {
		return "QnaDto [qid=" + qid + ", qtitle=" + qtitle + ", qcontent=" + qcontent + ", qdate=" + qdate + ", qviews="
				+ qviews + ", qwriter=" + qwriter + "]";
	}
	
}
