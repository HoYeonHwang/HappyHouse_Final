package com.ssafy.happyhouse.model;

public class NewsDTO {
	private String newsHeader; //뉴스 헤더
	private String newsContent; //뉴스 본문
	private String newsImg; //뉴스 이미지
	private String newswriting; //뉴스사
	private String newsdate; //시간
	
	
	public NewsDTO() {
	}
	public NewsDTO(String newsHeader, String newsContent, String newsImg, String newswriting, String newsdate) {
		this.newsHeader = newsHeader;
		this.newsContent = newsContent;
		this.newsImg = newsImg;
		this.newswriting = newswriting;
		this.newsdate = newsdate;
	}
	
	public String getNewsHeader() {
		return newsHeader;
	}
	public void setNewsHeader(String newsHeader) {
		this.newsHeader = newsHeader;
	}
	public String getNewsContent() {
		return newsContent;
	}
	public void setNewsContent(String newsContent) {
		this.newsContent = newsContent;
	}
	public String getNewsImg() {
		return newsImg;
	}
	public void setNewsImg(String newsImg) {
		this.newsImg = newsImg;
	}
	public String getNewswriting() {
		return newswriting;
	}
	public void setNewswriting(String newswriting) {
		this.newswriting = newswriting;
	}
	public String getNewsdate() {
		return newsdate;
	}
	public void setNewsdate(String newsdate) {
		this.newsdate = newsdate;
	}
	@Override
	public String toString() {
		return "NewsDTO [newsHeader=" + newsHeader + ", newsContent=" + newsContent + ", newsImg=" + newsImg
				+ ", newswriting=" + newswriting + ", newsdate=" + newsdate + "]";
	}
	
	
	
	
}
