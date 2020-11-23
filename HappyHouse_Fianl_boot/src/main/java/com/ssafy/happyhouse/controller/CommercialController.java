package com.ssafy.happyhouse.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.Gson;
import com.ssafy.happyhouse.model.CommercialDto;
import com.ssafy.happyhouse.model.CommercialDto.Item;

@RestController
public class CommercialController {
	
	
	@GetMapping("/apitest")
	public String callApiHttp() {
		String result = "";
		CommercialDto dto = null;
		URLConnection urlConn;
//		StringBuffer result = new StringBuffer();
		try {
			String urlstr = "http://apis.data.go.kr/B553077/api/open/sdsc/baroApi?" +
						 "resId=store&" +
						 "catId=dong&" +
						 "divId=ctprvnCd&" +
						 "type=json&" +
						 "key=11&" +
						 "ServiceKey=VSW43F1xNExQZJXgbn%2FVYvfP2q%2BOJnNpyD7fvPkXPnikPRwAqFkl6epB2WWuFbZVhV6FkR65zsu33JuPrgR2Sg%3D%3D";
			URL url = new URL(urlstr);
			urlConn = url.openConnection();
			HttpURLConnection urlconnection = (HttpURLConnection) url.openConnection();
			urlconnection.setRequestMethod("GET");
			BufferedReader br = new BufferedReader(new InputStreamReader(urlConn.getInputStream()));
			
			String returnLine;
//			result.append("<xmp>");
			while((returnLine = br.readLine()) != null) {
				result += returnLine;
			}
			result = result.trim();
            System.out.println(result);
            br.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		dto = new Gson().fromJson(result, CommercialDto.class);
		System.out.println(dto.response.header.resultCode);
//        for (Item item : dto.response.body.items.item) {
//        	System.out.println(item);
//		}

		return result + "</xmp>";
	}
}
