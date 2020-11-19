package com.ssafy.happyhouse.model.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ssafy.happyhouse.model.HouseNoticeDto;

@Mapper
public interface BoardMapper {
	public int selectTotalCount();
	public List<HouseNoticeDto> selectPage(HashMap map);
	public int insertBoard(HouseNoticeDto dto);
	public int updateReadcnt(int bnum);
	public HouseNoticeDto selectBoard(int bnum);
	public int deleteBoard(int bnum);
	public int updateBoard(HouseNoticeDto dto);
}
