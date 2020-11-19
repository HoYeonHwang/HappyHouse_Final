package com.ssafy.happyhouse.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ssafy.happyhouse.model.HouseNoticeDto;
import com.ssafy.happyhouse.model.HouseNoticePageDto;
import com.ssafy.happyhouse.model.service.BoardService;

@Controller
@RequestMapping("/board")
public class BoardController {
	@Autowired
	private BoardService boardService;
	
	@RequestMapping(value = "/boardMain", method = RequestMethod.GET)
	public ModelAndView selectPage(@RequestParam(value = "page", required = false) String pageStr,Model model, HttpSession session, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView("board/boardMain");
		int page = 1;
		if (pageStr == null || pageStr.equals("")) {
			page = 1;
		} else {
			page = Integer.parseInt(pageStr);
		}
		int COUNT_PER_PAGE =10;
		int totalCnt = boardService.selectTotalCount();
		int totalPageCnt = totalCnt/10;
		if(totalCnt%10>0) 
			totalPageCnt++;
		
		int startPage = (page-1)/10*10+1;
		int endPage = startPage+9;
		
		if(totalPageCnt<endPage)
			endPage = totalPageCnt;
		
		int startRow = (page-1)*10;
		HashMap map = new HashMap();
		map.put("startRow", startRow);
		map.put("page",COUNT_PER_PAGE);
		List<HouseNoticeDto> blist = boardService.selectPage(map);
		HouseNoticePageDto plist = new HouseNoticePageDto(blist, page, startPage, endPage, totalPageCnt);
		mv.addObject("plist", plist);
		return mv;
	}
	@RequestMapping(value = "/boardRead", method = RequestMethod.GET)
	public String getOneBoard(@RequestParam("bnum")int bnum, Model model) {
		boardService.updateReadcnt(bnum);
		HouseNoticeDto dto = boardService.selectBoard(bnum);
		model.addAttribute("board",dto);
		return "board/boardRead";
	}
	@RequestMapping(value = "/boardWrite", method = RequestMethod.GET)
	public String boardWrite(Model model) {
		return "board/boardWrite";
	}
}
