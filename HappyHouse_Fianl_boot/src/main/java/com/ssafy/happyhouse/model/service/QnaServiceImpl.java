package com.ssafy.happyhouse.model.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.model.QnaCommentDto;
import com.ssafy.happyhouse.model.QnaDto;
import com.ssafy.happyhouse.model.mapper.QnaMapper;

@Service
public class QnaServiceImpl implements QnaService{
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<QnaDto> searchAll(){
		return sqlSession.getMapper(QnaMapper.class).searchAll();
	}

	@Override
	public int insert(QnaDto dto) {
		return sqlSession.getMapper(QnaMapper.class).insert(dto);
	}

	@Override
	public int delete(int qid) {
		return sqlSession.getMapper(QnaMapper.class).delete(qid);
	}

	@Override
	public int update(QnaDto dto) {
		return sqlSession.getMapper(QnaMapper.class).update(dto);
	}

	@Override
	public QnaDto search(int qid) {
		return sqlSession.getMapper(QnaMapper.class).search(qid);
	}

	@Override
	public int addComment(QnaCommentDto dto) {
		return sqlSession.getMapper(QnaMapper.class).addComment(dto);
	}

	@Override
	public List<QnaCommentDto> searchAllComment(int qid) {
		return sqlSession.getMapper(QnaMapper.class).searchAllComment(qid);
	}

	@Override
	public List<QnaDto> searchName(String title) {
		return sqlSession.getMapper(QnaMapper.class).searchName(title);
	}

	@Override
	public int updateViews(int qid) {
		return sqlSession.getMapper(QnaMapper.class).updateViews(qid);
	}
}
