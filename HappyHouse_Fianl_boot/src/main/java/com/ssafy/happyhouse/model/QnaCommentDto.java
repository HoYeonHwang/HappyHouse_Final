package com.ssafy.happyhouse.model;

public class QnaCommentDto {
	private int qcid;
	private int qid;
	private String qctitle;
	private String qccontent;
	private String qcdate;
	private String qcwriter;
	
	
	public QnaCommentDto() {
	}
	public QnaCommentDto(int qid, String qctitle, String qccontent, String qcwriter) {
		this.qid = qid;
		this.qctitle = qctitle;
		this.qccontent = qccontent;
		this.qcwriter = qcwriter;
	}
	public QnaCommentDto(int qcid, int qid, String qctitle, String qccontent, String qcdate, String qcwriter) {
		this.qcid = qcid;
		this.qid = qid;
		this.qctitle = qctitle;
		this.qccontent = qccontent;
		this.qcdate = qcdate;
		this.qcwriter = qcwriter;
	}
	public int getQcid() {
		return qcid;
	}
	public void setQcid(int qcid) {
		this.qcid = qcid;
	}
	public int getQid() {
		return qid;
	}
	public void setQid(int qid) {
		this.qid = qid;
	}
	public String getQctitle() {
		return qctitle;
	}
	public void setQctitle(String qctitle) {
		this.qctitle = qctitle;
	}
	public String getQccontent() {
		return qccontent;
	}
	public void setQccontent(String qccontent) {
		this.qccontent = qccontent;
	}
	public String getQcdate() {
		return qcdate;
	}
	public void setQcdate(String qcdate) {
		this.qcdate = qcdate;
	}
	public String getQcwriter() {
		return qcwriter;
	}
	public void setQcwriter(String qcwriter) {
		this.qcwriter = qcwriter;
	}
	@Override
	public String toString() {
		return "QnaCommentDto [qcid=" + qcid + ", qid=" + qid + ", qctitle=" + qctitle + ", qccontent=" + qccontent
				+ ", qcdate=" + qcdate + ", qcwriter=" + qcwriter + "]";
	}
	
	
}
