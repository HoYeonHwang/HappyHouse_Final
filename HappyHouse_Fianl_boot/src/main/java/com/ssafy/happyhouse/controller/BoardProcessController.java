package com.ssafy.happyhouse.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.ssafy.happyhouse.model.HouseNoticeDto;
import com.ssafy.happyhouse.model.MemberDTO;
import com.ssafy.happyhouse.model.service.BoardService;
@RestController
@RequestMapping("/board")
public class BoardProcessController {
	@Autowired
	private BoardService boardService;
	
	@RequestMapping(value = "/boardProcess", method = RequestMethod.POST)
	public String insertBoard(@RequestParam("btitle") String btitle,@RequestParam("bcontent") String bcontent,HttpSession session) {
		MemberDTO userInfo = (MemberDTO) session.getAttribute("userinfo");
		String bwriter = userInfo.getUserid();
		HouseNoticeDto dto = new HouseNoticeDto(btitle, bwriter, bcontent,0);
		boardService.insertBoard(dto);
		return "board/boardMain";
	}
	@RequestMapping(value = "/boardProcess", method = RequestMethod.PUT, headers = { "Content-type=application/json" })
	public String updateBoard(@RequestBody HouseNoticeDto dto) {
		HouseNoticeDto memberDto = new HouseNoticeDto(dto.getBnum(),dto.getBtitle(), dto.getBwriter(), dto.getBcontent(),dto.getBread_cnt());
		int result = boardService.updateBoard(memberDto);
		if(result ==1) {
			return "success";
		}
		return "error";
	}
	@RequestMapping(value = "/boardProcess/{bnum}", method = RequestMethod.DELETE)
	public String delItem(@PathVariable("bnum") int bnum) {
		int result = boardService.deleteBoard(bnum);
		if(result ==1) {
			return "success";
		}
		return "error";
	}
}
