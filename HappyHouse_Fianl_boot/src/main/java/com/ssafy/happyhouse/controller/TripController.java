package com.ssafy.happyhouse.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ssafy.happyhouse.model.HouseNoticeDto;
import com.ssafy.happyhouse.model.MyFileDto;
import com.ssafy.happyhouse.model.ShopDTO;
import com.ssafy.happyhouse.model.TripDTO;
import com.ssafy.happyhouse.model.service.FileServiceImpl;
import com.ssafy.happyhouse.model.service.TripService;

@Controller
@RequestMapping("/trip")
public class TripController {
	@Autowired
	private TripService tripservice;
	@Autowired
	private FileServiceImpl fservice;
	
	@RequestMapping(value = "/tripMain", method = RequestMethod.GET)
	public String tripMain(Model model) {
		List<TripDTO> tripList = new ArrayList<TripDTO>();
		List<MyFileDto> fileList = new ArrayList<MyFileDto>();
		tripList = tripservice.getTrip();
		fileList = fservice.tselectAll();
		for(TripDTO t : tripList) {
			for(MyFileDto f : fileList) {
				if(t.getTripId()==f.getFno()) {
					t.setTripImg(f.getOrigin());
				}
			}
		}
		model.addAttribute("triplist",tripList);
		model.addAttribute("listcount",tripList.size());
		return "trip/tripMain";
	}
	@RequestMapping(value = "/tripSearch", method = RequestMethod.POST)
	public String tripMain(@RequestParam("search") String search,Model model) {
		List<TripDTO> tripList = new ArrayList<TripDTO>();
		List<MyFileDto> fileList = new ArrayList<MyFileDto>();
		tripList = tripservice.searchTrip(search);
		fileList = fservice.tselectAll();
		for(TripDTO t : tripList) {
			for(MyFileDto f : fileList) {
				if(t.getTripId()==f.getFno()) {
					t.setTripImg(f.getOrigin());
				}
			}
		}
		if(tripList.size()==1) {
			model.addAttribute("listcount",2);
		}
		else {
			model.addAttribute("listcount",tripList.size());
		}
		model.addAttribute("triplist",tripList);
		return "trip/tripMain";
	}
	@RequestMapping(value = "/tripWrite", method = RequestMethod.GET)
	public String Shopwrite(Model model) {
		return "trip/tripWrite";
	}

	@RequestMapping(value = "/tripSearchOne", method = RequestMethod.GET)
	public String getonetrip(@RequestParam("tripId")String search, Model model) {
		TripDTO dto = tripservice.searchTripOne(search);
		List<MyFileDto> fileList = new ArrayList<MyFileDto>();
		fileList = fservice.tselectAll();
			for(MyFileDto f : fileList) {
				if(dto.getTripId()==f.getFno()) {
					dto.setTripImg(f.getOrigin());
				}
			}
		model.addAttribute("trip",dto);
		return "trip/tripDetail";
	}
}
