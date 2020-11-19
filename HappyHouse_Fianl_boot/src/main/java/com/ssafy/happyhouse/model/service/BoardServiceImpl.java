package com.ssafy.happyhouse.model.service;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.model.HouseNoticeDto;
import com.ssafy.happyhouse.model.HouseNoticePageDto;
import com.ssafy.happyhouse.model.mapper.BoardMapper;

@Service
public class BoardServiceImpl implements BoardService{
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int selectTotalCount() {
		return sqlSession.getMapper(BoardMapper.class).selectTotalCount();
	}
	@Override
	public List<HouseNoticeDto> selectPage(HashMap map) {
		return sqlSession.getMapper(BoardMapper.class).selectPage(map);
	}
	@Override
	public int insertBoard(HouseNoticeDto dto) {
		return sqlSession.getMapper(BoardMapper.class).insertBoard(dto);
	}
	@Override
	public int updateReadcnt(int bnum) {
		return sqlSession.getMapper(BoardMapper.class).updateReadcnt(bnum);
	}
	@Override
	public HouseNoticeDto selectBoard(int bnum) {
		return sqlSession.getMapper(BoardMapper.class).selectBoard(bnum);
	}
	@Override
	public int deleteBoard(int bnum) {
		return sqlSession.getMapper(BoardMapper.class).deleteBoard(bnum);
	}
	@Override
	public int updateBoard(HouseNoticeDto dto) {
		return sqlSession.getMapper(BoardMapper.class).updateBoard(dto);
	}
	
}
