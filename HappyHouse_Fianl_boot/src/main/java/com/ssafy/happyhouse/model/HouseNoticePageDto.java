package com.ssafy.happyhouse.model;

import java.util.ArrayList;
import java.util.List;


public class HouseNoticePageDto {
	private List<HouseNoticeDto> noticeList;
	private int curPage;
	private int startPage;
	private int endPage;
	private int totalPage;
	
	public HouseNoticePageDto() {
	}

	public HouseNoticePageDto(List<HouseNoticeDto> list, int curPage, int startPage, int endPage,
			int totalPage) {
		this.noticeList = list;
		this.curPage = curPage;
		this.startPage = startPage;
		this.endPage = endPage;
		this.totalPage = totalPage;
	}
	
	public List<HouseNoticeDto> getNoticeList() {
		return noticeList;
	}

	public void setNoticeList(ArrayList<HouseNoticeDto> noticeList) {
		this.noticeList = noticeList;
	}

	public int getCurPage() {
		return curPage;
	}

	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	
	
}
