package com.ssafy.happyhouse.model.service;

import java.util.List;

import com.ssafy.happyhouse.model.ShopDTO;

public interface ShopService {
	public List<ShopDTO> getShop();
	public List<ShopDTO> searchShop(String search);
	public int insertShop(ShopDTO dto);
	public int updateReadcnt(String productId);

}
