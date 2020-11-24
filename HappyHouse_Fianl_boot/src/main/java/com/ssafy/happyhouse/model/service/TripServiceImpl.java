package com.ssafy.happyhouse.model.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.model.TripDTO;
import com.ssafy.happyhouse.model.mapper.TripMapper;
@Service
public class TripServiceImpl implements TripService {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<TripDTO> getTrip() {
		return sqlSession.getMapper(TripMapper.class).getTrip();
	}

	@Override
	public List<TripDTO> searchTrip(String search) {
		return sqlSession.getMapper(TripMapper.class).searchTrip(search);
	}

	@Override
	public int insertTrip(TripDTO dto) {
		return sqlSession.getMapper(TripMapper.class).insertTrip(dto);
	}

	@Override
	public TripDTO searchTripOne(String search) {
		return sqlSession.getMapper(TripMapper.class).searchTripOne(search);
	}
}
