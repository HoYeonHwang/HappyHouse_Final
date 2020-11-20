package com.ssafy.happyhouse.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ssafy.happyhouse.model.QnaCommentDto;
import com.ssafy.happyhouse.model.QnaDto;

@Mapper
public interface QnaMapper {
	public List<QnaDto> searchAll();
	public int insert(QnaDto dto);
	public int delete(int qid);
	public int update(QnaDto dto);
	public QnaDto search(int qid);
	public int addComment(QnaCommentDto dto);
	public List<QnaCommentDto> searchAllComment(int qid);
	public List<QnaDto> searchName(String title);
	public int updateViews(int qid);
}
