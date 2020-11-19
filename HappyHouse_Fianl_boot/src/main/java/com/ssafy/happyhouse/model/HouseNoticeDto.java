package com.ssafy.happyhouse.model;

public class HouseNoticeDto {
	private int bnum; // 글번호
	private String btitle; // 제목
	private String bwriter; // 작성자
	private int bread_cnt; // 조회수
	private String bwritedate; // 작성일시
	private String bcontent;// 글 내용
	
	public HouseNoticeDto() {
	}
	public HouseNoticeDto(int bnum, String btitle, String bwriter, int bread_cnt, String bwritedate, String bcontent) {
		this.bnum = bnum;
		this.btitle = btitle;
		this.bwriter = bwriter;
		this.bread_cnt = bread_cnt;
		this.bwritedate = bwritedate;
		this.bcontent = bcontent;
	}
	public HouseNoticeDto(String btitle, String bwriter, String bcontent,int bread_cnt) {
		this.btitle = btitle;
		this.bwriter = bwriter;
		this.bcontent = bcontent;
		this.bread_cnt = bread_cnt;
	}
	public HouseNoticeDto(int bnum, String btitle, String bwriter, String bwritedate, String bcontent) {
		this.bnum = bnum;
		this.btitle = btitle;
		this.bwriter = bwriter;
		this.bwritedate = bwritedate;
		this.bcontent = bcontent;
	}
	public HouseNoticeDto(int bnum, String btitle, String bwriter, String bcontent,int bread_cnt) {
		this.bnum = bnum;
		this.btitle = btitle;
		this.bwriter = bwriter;
		this.bcontent = bcontent;
		this.bread_cnt = bread_cnt;
	}
	public int getBnum() {
		return bnum;
	}
	public void setBnum(int bnum) {
		this.bnum = bnum;
	}
	public String getBtitle() {
		return btitle;
	}
	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}
	public String getBwriter() {
		return bwriter;
	}
	public void setBwriter(String bwriter) {
		this.bwriter = bwriter;
	}
	public int getBread_cnt() {
		return bread_cnt;
	}
	public void setBread_cnt(int bread_cnt) {
		this.bread_cnt = bread_cnt;
	}
	public String getBwritedate() {
		return bwritedate;
	}
	public void setBwritedate(String bwritedate) {
		this.bwritedate = bwritedate;
	}
	public String getBcontent() {
		return bcontent;
	}
	public void setBcontent(String bcontent) {
		this.bcontent = bcontent;
	}
	@Override
	public String toString() {
		return "HouseNoticeDto [bnum=" + bnum + ", btitle=" + btitle + ", bwriter=" + bwriter + ", bread_cnt="
				+ bread_cnt + ", bwritedate=" + bwritedate + ", bcontent=" + bcontent + "]";
	}
	
	
}
