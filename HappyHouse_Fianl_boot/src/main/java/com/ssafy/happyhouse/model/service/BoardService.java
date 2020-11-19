package com.ssafy.happyhouse.model.service;

import java.util.HashMap;
import java.util.List;

import com.ssafy.happyhouse.model.HouseNoticeDto;
import com.ssafy.happyhouse.model.mapper.BoardMapper;

public interface BoardService {
	public int selectTotalCount();
	public List<HouseNoticeDto> selectPage(HashMap map);
	public int insertBoard(HouseNoticeDto dto);
	public int updateReadcnt(int bnum);
	public HouseNoticeDto selectBoard(int bnum);
	public int deleteBoard(int bnum);
	public int updateBoard(HouseNoticeDto dto);
}
