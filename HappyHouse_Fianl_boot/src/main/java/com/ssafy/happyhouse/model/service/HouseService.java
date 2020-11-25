package com.ssafy.happyhouse.model.service;

import java.util.List;

import com.ssafy.happyhouse.model.HouseInfoDTO;
import com.ssafy.happyhouse.model.SidoGugunCodeDTO;
import com.ssafy.happyhouse.model.VillaInfoDTO;

public interface HouseService {
	public List<SidoGugunCodeDTO> getSido() throws Exception;
	public List<SidoGugunCodeDTO> getGugunInSido(String sido) throws Exception;
	public List<HouseInfoDTO> getDongInGugun(String gugun) throws Exception;
	public List<HouseInfoDTO> getAllsearch(String search) throws Exception;
	public List<HouseInfoDTO> getyearSearch(String search) throws Exception;
	public List<VillaInfoDTO> getvillaSearch(String search) throws Exception;
	public List<HouseInfoDTO> getAptInDong(String dong) throws Exception;
	public List<HouseInfoDTO> getAptInDongSearch(String dong, String search) throws Exception;
	public String getDongCode(String dong) throws Exception;
}
