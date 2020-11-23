package com.ssafy.happyhouse.model.mapper;

import java.util.List;

import com.ssafy.happyhouse.model.MyFileDto;

public interface FileMapper {
	public int insertFile(MyFileDto dto);
	public List<MyFileDto> selectAll();
	public MyFileDto selectOne(int fno);
}
