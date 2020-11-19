package com.ssafy.happyhouse.model.mapper;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.ssafy.happyhouse.model.MemberDTO;
@Mapper

public interface UserMapper {

	public MemberDTO login(Map<String, String> map) throws SQLException;
	public List<MemberDTO> userList();
	public MemberDTO userInfo(String userid);
	public int userRegister(MemberDTO memberDto);
	public int userModify(MemberDTO memberDto);
	public void userDelete(String userid);
	
}
