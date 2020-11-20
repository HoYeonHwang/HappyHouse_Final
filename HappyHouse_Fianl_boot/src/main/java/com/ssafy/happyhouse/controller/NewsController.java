package com.ssafy.happyhouse.controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.jsoup.nodes.Element;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ssafy.happyhouse.model.NewsDTO;
import com.ssafy.happyhouse.model.service.NewsService;

@Controller
@RequestMapping("/news")
public class NewsController {
	@Autowired
	private NewsService newsservice;
	
	@RequestMapping(value = "/newsMain", method = RequestMethod.GET)
	public String getNews(Model model) {
		List<NewsDTO> newslist = newsservice.getNews();
		for(NewsDTO n :newslist) {
			System.out.println("헤더 : "+n.getNewsHeader());
			System.out.println("본문 : "+n.getNewsContent());
			System.out.println("이미지  : "+n.getNewsImg());
			System.out.println("신문사  : "+ n.getNewswriting());
			System.out.println("날짜  : "+n.getNewsdate());

			System.out.println("=======================================");
		}
		model.addAttribute("newsList",newslist);
		return "news/newsMain";
	}
	
}
