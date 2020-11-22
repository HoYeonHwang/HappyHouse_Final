package com.ssafy.happyhouse.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.ssafy.happyhouse.model.HouseNoticeDto;
import com.ssafy.happyhouse.model.ShopDTO;
import com.ssafy.happyhouse.model.service.ShopService;

@RestController
@RequestMapping("/shop")
public class ShopProcessController {
	@Autowired
	private ShopService shopservice;
	
	@RequestMapping(value = "/shopProcess", method = RequestMethod.POST)
	public String insertshop(@RequestBody ShopDTO dto ,Model model) {
		int result = shopservice.insertShop(dto);
		if(result ==1) {
			return "success";
		}
		return "error";
	}
	@RequestMapping(value = "/shopRead", method = RequestMethod.PUT)
	public String shopRead(@RequestBody ShopDTO dto, Model model) {
		int result = shopservice.updateReadcnt(Integer.toString(dto.getProductId()));
		if(result ==1) {
			return "success";
		}
		return "error";
	}
}
