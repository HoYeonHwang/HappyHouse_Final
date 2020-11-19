package com.ssafy.happyhouse.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.ssafy.happyhouse.model.MemberDTO;


public class ConfirmInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession();
		MemberDTO memberDto = (MemberDTO) session.getAttribute("userinfo");
		if(memberDto == null) {
			response.sendRedirect(request.getContextPath());
			return false;
		}
		return true;
	}

	
	
}
