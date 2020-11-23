package com.ssafy.happyhouse.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.ssafy.happyhouse.model.CommercialDto;
import com.ssafy.happyhouse.model.service.HouseService;

@RestController
public class CommercialController {
	@Autowired
	private HouseService houseService;
	
	@GetMapping("/apitest")
	@ResponseBody
	public List<CommercialDto> callApiHttp(@RequestParam("dong") String dong) {
		System.out.println(dong);
		String dongcode = null;
		try {
			dongcode = houseService.getDongCode(dong);
		} catch (Exception e1) {
			e1.printStackTrace();
		}
		String result = "";
		List<CommercialDto> list_dto = null;
		System.out.println(dongcode);
		try {
			String urlstr = "http://apis.data.go.kr/B553077/api/open/sdsc/baroApi?" +
						 "resId=store&" +
						 "catId=dong&" +
						 "divId=signguCd&" +
						 "type=json&" +
						 "key=" + dongcode+"&"+
						 "ServiceKey=VSW43F1xNExQZJXgbn%2FVYvfP2q%2BOJnNpyD7fvPkXPnikPRwAqFkl6epB2WWuFbZVhV6FkR65zsu33JuPrgR2Sg%3D%3D";
			System.out.println(urlstr);
			URL url = new URL(urlstr);
			BufferedReader br = new BufferedReader(new InputStreamReader(url.openStream()));
			String returnLine;
			while((returnLine = br.readLine()) != null) {
				result += returnLine;
			}
			list_dto = new ArrayList<CommercialDto>();
			JSONParser parser = new JSONParser();
			JSONObject jsonObject = (JSONObject) parser.parse(result);
			JSONObject body = (JSONObject) jsonObject.get("body");
			JSONArray items = (JSONArray) body.get("items");
			for(int i=0; i<items.size(); i++) {
				JSONObject commercialInfo = (JSONObject) items.get(i);
				String bizesId = (String) commercialInfo.get("bizesId");
				String bizesNm = (String) commercialInfo.get("bizesNm");
				Double lon = (Double) commercialInfo.get("lon");
				Double lat = (Double) commercialInfo.get("lat");
				list_dto.add(new CommercialDto(bizesId, bizesNm, lon, lat));
				System.out.println(list_dto.get(i));
			}
            br.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list_dto;
	}
}
