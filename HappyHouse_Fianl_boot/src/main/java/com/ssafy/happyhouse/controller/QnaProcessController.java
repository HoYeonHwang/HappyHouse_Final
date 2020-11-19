package com.ssafy.happyhouse.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.ssafy.happyhouse.model.MemberDTO;
import com.ssafy.happyhouse.model.QnaCommentDto;
import com.ssafy.happyhouse.model.QnaDto;
import com.ssafy.happyhouse.model.service.QnaService;

@RestController
@CrossOrigin(origins = {"*"})
@RequestMapping("/qna")
public class QnaProcessController {
	
	@Autowired
	private QnaService qnaService;
	
	// 글 목록 전체검색
	@RequestMapping(value = "/searchAll", method = RequestMethod.GET)
	public List<QnaDto> searchAll(HttpSession session) {
		return qnaService.searchAll();
	}
	
	// 글 작성
	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String insertBoard(@RequestBody QnaDto dto, HttpSession session) {
		MemberDTO userInfo = (MemberDTO) session.getAttribute("userinfo");
		dto.setQwriter(userInfo.getUserid());
		int result = qnaService.insert(dto);
		if(result ==1) {
			return "success";
		}
		return "error";
	}
	
	// 글 정보
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public QnaDto search(@RequestParam("qid")int qid, HttpSession session) {
		qnaService.updateViews(qid);
		return qnaService.search(qid);
	}
	
	// 글 상세검색
	@RequestMapping(value = "/searchname", method = RequestMethod.GET)
	public List<QnaDto> search(@RequestParam("qtitle")String qtitle, HttpSession session) {
		return qnaService.searchName(qtitle);
	}
	
	// 글 수정
	@RequestMapping(value = "/update", method = RequestMethod.PUT , headers = { "Content-type=application/json" })
	public String update(@RequestBody QnaDto dto) {
		int result = qnaService.update(dto);
		if(result ==1) {
			return "success";
		}
		return "error";
	}
	
	// 글 삭제
	@RequestMapping(value = "/delete/{qid}", method = RequestMethod.DELETE)
	public String delItem(@PathVariable("qid") int qid) {
		int result = qnaService.delete(qid);
		if(result ==1) {
			return "success";
		}
		return "error";
	}
	
	// 댓글 추가
	@RequestMapping(value = "/addcomment", method = RequestMethod.POST)
	public String addComment(@RequestBody QnaCommentDto dto, HttpSession session) {
		MemberDTO userInfo = (MemberDTO) session.getAttribute("userinfo");
		dto.setQcwriter(userInfo.getUserid());
		int result = qnaService.addComment(dto);
		if(result ==1) {
			return "success";
		}
		return "error";
	}

	// 댓글 불러오기
	@RequestMapping(value = "/commentlist", method = RequestMethod.GET)
	public List<QnaCommentDto> commentList(@RequestParam("qid")int qid, HttpSession session) {
		return qnaService.searchAllComment(qid);
	}
}
