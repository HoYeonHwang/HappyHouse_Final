package com.ssafy.happyhouse.model.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.model.MyFileDto;
import com.ssafy.happyhouse.model.mapper.FileMapper;

@Service
public class FileServiceImpl{
	@Autowired
	private SqlSession sqlSession;
	
	public int saveFile(MyFileDto dto) {
		return sqlSession.getMapper(FileMapper.class).insertFile(dto);
	}
	public MyFileDto searchFile(int fno) {
		return sqlSession.getMapper(FileMapper.class).selectOne(fno);
	}
	public List<MyFileDto> selectAll() {
		return sqlSession.getMapper(FileMapper.class).selectAll();
	}
	public int tsaveFile(MyFileDto dto) {
		return sqlSession.getMapper(FileMapper.class).tinsertFile(dto);
	}
	public MyFileDto tsearchFile(int fno) {
		return sqlSession.getMapper(FileMapper.class).tselectOne(fno);
	}
	public List<MyFileDto> tselectAll() {
		return sqlSession.getMapper(FileMapper.class).tselectAll();
	}
}
