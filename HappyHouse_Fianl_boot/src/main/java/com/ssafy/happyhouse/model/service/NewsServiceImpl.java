package com.ssafy.happyhouse.model.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.model.NewsDTO;

@Service
public class NewsServiceImpl implements NewsService{
	@Override
	public List<NewsDTO> getNews(){
		String url = "https://land.naver.com/news/field.nhn";
		Document doc = null;
		try {
			doc = Jsoup.connect(url).get();
		} catch (IOException e) {
			e.printStackTrace();
		}
		Elements element = doc.select("div#content");    

		//Iterator을 사용하여 하나씩 값 가져오기
		Iterator<Element> ie3 = element.select("dl dt.photo img").iterator(); //이미지
		Iterator<Element> ie1 = element.select("dl dt:not(.photo)").select("a").iterator(); //헤더
		Iterator<Element> ie2 = element.select("dl dd").iterator(); //본문
		Iterator<Element> ie4 = element.select("dl dd").select("span.writing").iterator(); //신문사
		Iterator<Element> ie5 = element.select("dl dd").select("span.date").iterator(); //날짜
		List<NewsDTO> newslist = new ArrayList<NewsDTO>();
		
		while(ie2.hasNext()) {
			String newshead = ie1.next().text();
			String newscontent = ie2.next().text();
			String href = ie3.next().attr("src");
			String wirter = ie4.next().text();
			String date = ie5.next().text();
			newslist.add(new NewsDTO(newshead,newscontent,href,wirter,date));
		}
		return newslist;
	}
	public static void main(String[] args) {
	}
}
