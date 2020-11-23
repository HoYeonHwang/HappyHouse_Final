package com.ssafy.happyhouse.interceptor;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebMvcConfig implements WebMvcConfigurer {
	
	@Autowired
	private ConfirmInterceptor interceptor;
	
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(interceptor)
//				.addPathPatterns("/")
				.addPathPatterns("/house/*")
				.addPathPatterns("/shop/*")
				.addPathPatterns("/board/*")
				.addPathPatterns("/news/*")
				.addPathPatterns("/qna/*")
				.excludePathPatterns("/user/*");
	}
}
