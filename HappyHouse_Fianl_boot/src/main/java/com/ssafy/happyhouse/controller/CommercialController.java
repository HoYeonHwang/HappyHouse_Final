package com.ssafy.happyhouse.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class CommercialController {
	
	
	@GetMapping("/apitest")
	public String callApiHttp() {
		StringBuffer result = new StringBuffer();
		try {
			String urlstr = "http://apis.data.go.kr/B553077/api/open/sdsc/baroApi?" +
						 "type=json&" +
						 "resId=storezone&" +
						 "key=573&" +
						 "ServiceKey=VSW43F1xNExQZJXgbn%2FVYvfP2q%2BOJnNpyD7fvPkXPnikPRwAqFkl6epB2WWuFbZVhV6FkR65zsu33JuPrgR2Sg%3D%3D";
			URL url = new URL(urlstr);
			HttpURLConnection urlconnection = (HttpURLConnection) url.openConnection();
			urlconnection.setRequestMethod("GET");
			BufferedReader br = new BufferedReader(new InputStreamReader(urlconnection.getInputStream(), "UTF-8"));
			
			String returnLine;
			result.append("<xmp>");
			while((returnLine = br.readLine()) != null) {
				result.append(returnLine + "\n");
			}
			urlconnection.disconnect();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result + "</xmp>";
	}
}
