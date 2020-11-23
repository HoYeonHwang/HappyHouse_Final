package com.ssafy.happyhouse.controller;

import java.io.IOException;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.ssafy.happyhouse.model.MemberDTO;
import com.ssafy.happyhouse.model.service.UserService;

//@RestController
@Controller
@RequestMapping("/user")
public class LoginController extends HttpServlet {
	
	@Autowired
	private UserService userService;
	
	// 로그인 -> GET
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		return "user/login";
	}
	
	// 로그인 -> POST
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@RequestParam Map<String, String> map, Model model, HttpSession session, HttpServletResponse response) {
		try {
			MemberDTO memberDto = userService.login(map);
			if(memberDto != null) {
				session.setAttribute("userinfo", memberDto);
				System.out.println(memberDto.getUsername());
				Cookie cookie = new Cookie("ssafy_id", memberDto.getUserid());
				cookie.setPath("/");
				if("saveok".equals(map.get("idsave"))) {
					cookie.setMaxAge(60 * 60 * 24 * 365 * 40);//40년간 저장.
				} else {
					cookie.setMaxAge(0);
				}
				response.addCookie(cookie);
				if(memberDto.getUserid().equals("admin")) {
					session.setAttribute("logininfo", "admin");
//					model.addAttribute("logininfo", "admin");
				}
			} else {
				model.addAttribute("msg", "아이디 또는 비밀번호 확인 후 로그인해 주세요.");
				return "user/login";
			}
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("msg", "로그인 중 문제가 발생했습니다.");
			return "error/error";
		}
		return "redirect:/";
	}
	
	// 회원가입 -> GET
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String join(HttpSession session) {
		return "user/register";
	}
	
	// 회원가입 -> POST
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String join(HttpSession session, Model model, String userid, String username, String userpwd, String emailid, String emaildomain, String address, String joindate) {
		String email = emailid+"@"+emaildomain;
		MemberDTO dto = new MemberDTO(userid, username, userpwd, email, address, joindate);
		int flag = userService.userRegister(dto);
		if(flag == 1) {
			return "user/login";
		}
		model.addAttribute("msg", "회원가입 중 문제가 발생했습니다.");
		return "user/register";
	}
	
	// 로그아웃 -> GET
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	// 내 정보 조회 -> GET
	@RequestMapping(value = "/info", method = RequestMethod.GET)
	public String info(Model model, @RequestParam(value = "userid") String userid, HttpSession session) {
		MemberDTO dto = userService.userInfo(userid);
		model.addAttribute("myinfo", dto);
		
		return "user/info";
	}
	
	// 회원탈퇴 -> GET
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String delete(HttpSession session, Model model, @RequestParam(value = "userid") String userid) {
		System.out.println(userid);
		userService.userDelete(userid);
		session.invalidate();
		model.addAttribute("msg", "회원탈퇴가 완료되었습니다.");
		return "redirect:/";
	}
	
	// 내정보 수정 -> POST
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(Model model, HttpSession session, String userid, String username, String userpwd, String email, String address, String joindate) {
		MemberDTO dto = new MemberDTO(userid, username, userpwd, email, address, joindate);
		System.out.println(userService.userModify(dto));
		model.addAttribute("myinfo", dto);
		
		return "redirect:/";
	}
	
	// 비밀번호 찾기 -> POST
	@RequestMapping(value = "/findpassword", method = RequestMethod.GET)
	public String findPassword(HttpSession session) {
		return "user/findPassword";
	}
	
	@RequestMapping(value = "/findpassword", method = RequestMethod.POST)
	public String findPassword(@RequestParam String userid, Model model, HttpSession session) {
		String pw = userService.findPassword(userid);
		System.out.println(pw);
		if(pw != null) {
			model.addAttribute("userpwd", pw);
		}
		else {
			model.addAttribute("userpwd", "notExsit");
		}
		return "user/findPassword";
	}

}
