package com.ssafy.happyhouse.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.ssafy.happyhouse.model.TripDTO;
import com.ssafy.happyhouse.model.service.TripService;

@RestController
@RequestMapping("/trip") 
public class TripProcessController {
	@Autowired
	private TripService tripservice;
	
	@RequestMapping(value = "/tripProcess", method = RequestMethod.POST )
	public String inserttrip(@RequestBody TripDTO dto, Model model) {
		int result = tripservice.insertTrip(dto);
		if (result == 1) {
			return "success";
		}
		return "error";
	}

}
