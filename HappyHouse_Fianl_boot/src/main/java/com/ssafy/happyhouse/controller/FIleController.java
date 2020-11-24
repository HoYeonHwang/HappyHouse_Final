package com.ssafy.happyhouse.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Random;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.ssafy.happyhouse.model.MyFileDto;
import com.ssafy.happyhouse.model.service.FileServiceImpl;

@RestController
public class FIleController {
	
	@Autowired
	private FileServiceImpl fservice;
	
	@PostMapping("/shop/uploadFile")
	public String upload(MyFileDto dto) {
		System.out.println("파일업로드 시작");
		String path = "C:\\Users\\HwangHoYeon\\git\\happyhouse_final\\HappyHouse_Fianl_boot\\src\\main\\resources\\static\\images\\shop\\";
		System.out.println(dto.getUploadFile());
		File dir = new File(path);
		if(!dir.exists()) // 파일 저장할 폴더가 없으면
			dir.mkdir(); // 폴더를 생성해라
		int filename= new Random().nextInt(100000000);
		String savedName = path+filename;
		String fileName=Integer.toString(filename);
		File saveFile = new File(savedName); // 사용자가 업로드한 파일을 저장하기 위한 비어있는 파일을 하나 만듬. 이름은 랜덤.
		int result=0;
		try {
			dto.getUploadFile().transferTo(saveFile); // 사용자가 보낸 파일을 서버의 폴더에 저장시키는 작업!
			String str = new String(dto.getUploadFile().getOriginalFilename().getBytes("8859_1"),"utf-8"); // 한국 개발자의 설움 .. 
			dto.setFilename(str); // 클라이언트가 업로드한 이름
			dto.setOrigin(fileName); // 실제 서버에 저장된 이름.
			result= fservice.saveFile(dto); // db에 기록하시오.
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		if (result == 1) {
			return "success";
		}
		return "error";
	}
	@PostMapping("/trip/uploadFile")
	public String uploadtrip(MyFileDto dto) {
		System.out.println("파일업로드 시작");
		String path = "C:\\Users\\HwangHoYeon\\git\\happyhouse_final\\HappyHouse_Fianl_boot\\src\\main\\resources\\static\\images\\trip\\";
		System.out.println(dto.getUploadFile());
		File dir = new File(path);
		if(!dir.exists()) // 파일 저장할 폴더가 없으면
			dir.mkdir(); // 폴더를 생성해라
		int filename= new Random().nextInt(100000000);
		String savedName = path+filename;
		String fileName=Integer.toString(filename);
		File saveFile = new File(savedName); // 사용자가 업로드한 파일을 저장하기 위한 비어있는 파일을 하나 만듬. 이름은 랜덤.
		int result=0;
		try {
			dto.getUploadFile().transferTo(saveFile); // 사용자가 보낸 파일을 서버의 폴더에 저장시키는 작업!
			String str = new String(dto.getUploadFile().getOriginalFilename().getBytes("8859_1"),"utf-8"); // 한국 개발자의 설움 .. 
			dto.setFilename(str); // 클라이언트가 업로드한 이름
			dto.setOrigin(fileName); // 실제 서버에 저장된 이름.
			result= fservice.tsaveFile(dto); // db에 기록하시오.
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		if (result == 1) {
			return "success";
		}
		return "error";
	}
	
}
