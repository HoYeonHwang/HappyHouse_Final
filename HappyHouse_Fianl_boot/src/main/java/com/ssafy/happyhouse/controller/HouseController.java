package com.ssafy.happyhouse.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ssafy.happyhouse.model.HouseInfoDTO;
import com.ssafy.happyhouse.model.HouseNoticeDto;
import com.ssafy.happyhouse.model.HouseNoticePageDto;
import com.ssafy.happyhouse.model.SidoGugunCodeDTO;
import com.ssafy.happyhouse.model.service.BoardService;
import com.ssafy.happyhouse.model.service.HouseService;

@Controller
@RequestMapping("/house")
public class HouseController {
	@Autowired
	private HouseService houseService;
	@RequestMapping(value = "/searchMain", method = RequestMethod.GET)
	public String searchMain() {
		return "house/searchMain";
	}
	@RequestMapping(value = "/qna", method = RequestMethod.GET)
	public String qnaMain() {
		return "qna/qnaMain";
	}
	@RequestMapping(value = "/get", method = RequestMethod.GET)
	@ResponseBody
	public List<HouseInfoDTO> search(@RequestParam("search") String search, Model model) throws Exception {
		List<HouseInfoDTO> result = houseService.getAllsearch(search);
		return result;
	}
	@RequestMapping(value = "/sido", method = RequestMethod.GET)
	@ResponseBody
	public List<SidoGugunCodeDTO> searchsido(Model model) throws Exception {
		List<SidoGugunCodeDTO> result = houseService.getSido();
		return result;
	}
	@RequestMapping(value = "/gugun", method = RequestMethod.GET)
	@ResponseBody
	public List<SidoGugunCodeDTO> searchgugun(@RequestParam("sido") String sido,Model model) throws Exception {
		System.out.println(sido);
		List<SidoGugunCodeDTO> result = houseService.getGugunInSido(sido);
		return result;
	}
	@RequestMapping(value = "/dong", method = RequestMethod.GET)
	@ResponseBody
	public List<HouseInfoDTO> searchdong(@RequestParam("gugun") String gugun,Model model) throws Exception {
		List<HouseInfoDTO> result = houseService.getDongInGugun(gugun);
		return result;
	}
	@RequestMapping(value = "/apt", method = RequestMethod.GET)
	@ResponseBody
	public List<HouseInfoDTO> searchapt(@RequestParam("dong") String dong,  Model model) throws Exception {
		List<HouseInfoDTO> result = houseService.getAptInDong(dong);
		return result;
	}
	@RequestMapping(value = "/aptInSearch", method = RequestMethod.GET)
	@ResponseBody
	public List<HouseInfoDTO> searchapt2(@RequestParam("dong") String dong, @RequestParam("search") String search,  Model model) throws Exception {
		System.out.println("dong: " +dong+"search: " + search);
		List<HouseInfoDTO> result = houseService.getAptInDongSearch(dong, search);
		return result;
	}
	
}
