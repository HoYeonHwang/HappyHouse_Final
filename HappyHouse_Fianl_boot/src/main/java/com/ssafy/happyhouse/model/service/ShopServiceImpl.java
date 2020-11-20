package com.ssafy.happyhouse.model.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.model.ShopDTO;
import com.ssafy.happyhouse.model.mapper.ShopMapper;

@Service
public class ShopServiceImpl implements ShopService {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<ShopDTO> getShop(){
		return sqlSession.getMapper(ShopMapper.class).getShop();
	}

	@Override
	public List<ShopDTO> searchShop(String search) {
		return sqlSession.getMapper(ShopMapper.class).searchShop(search);
	}
}
