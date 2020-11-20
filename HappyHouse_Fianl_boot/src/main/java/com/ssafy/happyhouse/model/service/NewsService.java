package com.ssafy.happyhouse.model.service;

import java.util.Iterator;
import java.util.List;

import org.jsoup.nodes.Element;

import com.ssafy.happyhouse.model.NewsDTO;

public interface NewsService {
	public List<NewsDTO> getNews();
}
