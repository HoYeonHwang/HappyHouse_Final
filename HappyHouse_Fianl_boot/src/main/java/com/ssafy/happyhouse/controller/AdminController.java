package com.ssafy.happyhouse.controller;

import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ssafy.happyhouse.model.MemberDTO;
import com.ssafy.happyhouse.model.service.UserService;

//@RestController
@Controller
@RequestMapping("/admin")
public class AdminController extends HttpServlet {
	
	@Autowired
	private UserService userService;
	
	// 회원 리스트 -> GET
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String update(Model model, HttpSession session) {
		System.out.println("??");
		List<MemberDTO> dto = userService.userList();
		model.addAttribute("memberlist", dto);
		
		return "admin/memberlist";
	}

}
