package com.ssafy.happyhouse.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ssafy.happyhouse.model.NewsDTO;
import com.ssafy.happyhouse.model.ShopDTO;
import com.ssafy.happyhouse.model.service.NewsService;
import com.ssafy.happyhouse.model.service.ShopService;

@Controller
@RequestMapping("/shop")
public class ShopController {
	@Autowired
	private ShopService shopservice;
	
	@RequestMapping(value = "/shopMain", method = RequestMethod.GET)
	public String getNews(Model model) {
//		private String productHeader; //헤더
//		private String productPrice; // 가격 
//		private String productRate; //할인률
//		private String productReview; // 리뷰 조회수
//		private String productbadge; // 무료배송 최저가 배너
		System.out.println("?/??/");
		List<ShopDTO> shoplist = shopservice.getShop();
//		for(ShopDTO s :shoplist) {
//			System.out.println("헤더 : "+s.getProductHeader());
//			System.out.println("가격 : "+s.getProductPrice());
//			System.out.println("할인률  : "+s.getProductRate());
//			System.out.println("리뷰  : "+ s.getProductReview());
//			System.out.println("배너  : "+s.getProductbadge());
//			System.out.println("=======================================");
//		}
		return "shop/shopMain";
	}
}
