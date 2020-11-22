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
public class NewsServiceImpl implements NewsService {
	@Override
	public List<NewsDTO> getNews() {
		String url = "https://land.naver.com/news/field.nhn";
		Document doc = null;
		try {
			doc = Jsoup.connect(url).get();
		} catch (IOException e) {
			e.printStackTrace();
		}
		Elements element = doc.select("div#content");
		// Iterator을 사용하여 하나씩 값 가져오기
		Iterator<Element> ie1 = element.select("dl dt:not(.photo)").select("a").iterator(); // 헤더
		Iterator<Element> ie3 = element.select("dl dt.photo img").iterator(); // 이미지
		Iterator<Element> ie2 = element.select("dl dd").iterator(); // 본문
		Iterator<Element> ie4 = element.select("dl dd").select("span.writing").iterator(); // 신문사
		Iterator<Element> ie5 = element.select("dl dd").select("span.date").iterator(); // 날짜
		List<NewsDTO> newslist = new ArrayList<NewsDTO>();
		while (ie3.hasNext()) {
			String newshead = null;
			String newscontent = null;
			String href = null;
			String wirter = null;
			String date = null;
			String temp = null;
//			if(ie3.next().attr("src")==null) {
//				System.out.println("날가져라");
//			}
			newshead = ie1.next().text();
//			if (newshead == null) {
//				newshead = "";
//			}
			newscontent = ie2.next().text();
//			if (newscontent == null) {
//				newscontent = "";
//			}

			href = ie3.next().attr("src");
//			if (ie3.next().attr("src")!=null) {
//			}else {
//				href = "";
//			}
			wirter = ie4.next().text();
//			if (wirter == null) {
//				wirter = "";
//			}
			date = ie5.next().text();
//			if (date == null) {
//				date = "";
//			}
			newslist.add(new NewsDTO(newshead, newscontent, href, wirter, date));
		}
		return newslist;
	}

	public static void main(String[] args) {
	}
}
