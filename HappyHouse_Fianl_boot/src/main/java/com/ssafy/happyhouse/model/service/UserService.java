package com.ssafy.happyhouse.model.service;

import java.util.List;
import java.util.Map;

import com.ssafy.happyhouse.model.MemberDTO;

public interface UserService {

	public MemberDTO login(Map<String, String> map) throws Exception; // 로그인 
	public List<MemberDTO> userList(); // 전체 리스트
	public MemberDTO userInfo(String userid); // 상세 유저 정보
	public int userRegister(MemberDTO memberDto); // 유저 등록
	public int userModify(MemberDTO memberDto); // 유저 정보 수정
	public void userDelete(String userid); // 유저 정보 삭제
	public String findPassword(String userid); // 비밀번호 찾기
	
}
