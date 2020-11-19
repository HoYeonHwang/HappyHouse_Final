package com.ssafy.happyhouse.model.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.model.MemberDTO;
import com.ssafy.happyhouse.model.mapper.UserMapper;


@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public MemberDTO login(Map<String, String> map) throws Exception {
		if(map.get("userid") == null || map.get("userpwd") == null)
			return null;
		return sqlSession.getMapper(UserMapper.class).login(map);
	}

	@Override
	public List<MemberDTO> userList() {
		return sqlSession.getMapper(UserMapper.class).userList();
	}

	@Override
	public MemberDTO userInfo(String userid) {
		return sqlSession.getMapper(UserMapper.class).userInfo(userid);
	}

	@Override
	public int userRegister(MemberDTO memberDto) {
		return sqlSession.getMapper(UserMapper.class).userRegister(memberDto);
	}

	@Override
	public int userModify(MemberDTO memberDto) {
		return sqlSession.getMapper(UserMapper.class).userModify(memberDto);
	}

	@Override
	public void userDelete(String userid) {
		sqlSession.getMapper(UserMapper.class).userDelete(userid);
	}

	@Override
	public String findPassword(String userid) {
		return sqlSession.getMapper(UserMapper.class).findPassword(userid);
		
	}

}
