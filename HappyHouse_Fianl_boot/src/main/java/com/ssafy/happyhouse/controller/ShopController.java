package com.ssafy.happyhouse.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ssafy.happyhouse.model.HouseNoticeDto;
import com.ssafy.happyhouse.model.ShopDTO;
import com.ssafy.happyhouse.model.service.ShopService;

@Controller
@RequestMapping("/shop")
public class ShopController {
	@Autowired
	private ShopService shopservice;
	
	@RequestMapping(value = "/shopMain", method = RequestMethod.GET)
	public String getShops(Model model) {
		List<ShopDTO> shopList = new ArrayList<ShopDTO>();
		shopList = shopservice.getShop();
		model.addAttribute("shoplist",shopList);
		model.addAttribute("listcount",shopList.size());
		return "shop/shopMain";
	}
	@RequestMapping(value = "/shopSearch", method = RequestMethod.POST)
	public String getshop(@RequestParam("search") String search,Model model) {
		List<ShopDTO> shopList = new ArrayList<ShopDTO>();
		shopList = shopservice.searchShop(search);
		System.out.println(shopList.size());
		if(shopList.size()==1) {
			model.addAttribute("listcount",2);
		}
		else {
			model.addAttribute("listcount",shopList.size());
		}
		model.addAttribute("shoplist",shopList);
		return "shop/shopMain";
	}
	@RequestMapping(value = "/shopWrite", method = RequestMethod.GET)
	public String Shopwrite(Model model) {
		return "shop/shopWrite";
	}
	
}
