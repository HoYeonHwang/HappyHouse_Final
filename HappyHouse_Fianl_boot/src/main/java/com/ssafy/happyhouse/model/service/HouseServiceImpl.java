package com.ssafy.happyhouse.model.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.model.HouseInfoDTO;
import com.ssafy.happyhouse.model.SidoGugunCodeDTO;
import com.ssafy.happyhouse.model.VillaInfoDTO;
import com.ssafy.happyhouse.model.mapper.HouseMapper;

@Service
public class HouseServiceImpl implements HouseService{
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<SidoGugunCodeDTO> getSido() throws Exception{
		return sqlSession.getMapper(HouseMapper.class).getSido();
	}
	@Override
	public List<SidoGugunCodeDTO> getGugunInSido(String sido) throws Exception{
		return sqlSession.getMapper(HouseMapper.class).getGugunInSido(sido);
	}
	@Override
	public List<HouseInfoDTO> getDongInGugun(String gugun) throws Exception{
		return sqlSession.getMapper(HouseMapper.class).getDongInGugun(gugun);
	}
	@Override
	public List<HouseInfoDTO> getAllsearch(String search) throws Exception{
		return sqlSession.getMapper(HouseMapper.class).getAllsearch(search);
	}
	@Override
	public List<HouseInfoDTO> getyearSearch(String search) throws Exception{
		return sqlSession.getMapper(HouseMapper.class).getyearSearch(search);
	}
	@Override
	public List<VillaInfoDTO> getvillaSearch(String search) throws Exception{
		return sqlSession.getMapper(HouseMapper.class).getvillaSearch(search);
	}
	@Override
	public List<HouseInfoDTO> getAptInDong(String dong) throws Exception{
		return sqlSession.getMapper(HouseMapper.class).getAptInDong(dong);
	}
	@Override
	public String getDongCode(String dong) throws Exception {
		return sqlSession.getMapper(HouseMapper.class).getDongCode(dong);
	}
	@Override
	public List<HouseInfoDTO> getAptInDongSearch(String dong, String search) throws Exception {
		return sqlSession.getMapper(HouseMapper.class).getAptInDongSearch(dong, search);
	}
}
