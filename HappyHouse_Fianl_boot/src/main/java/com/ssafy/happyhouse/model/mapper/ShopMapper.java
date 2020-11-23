package com.ssafy.happyhouse.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ssafy.happyhouse.model.ShopDTO;

@Mapper
public interface ShopMapper {
	public List<ShopDTO> getShop();
	public List<ShopDTO> searchShop(String search);
	public int insertShop(ShopDTO dto);
	public int updateReadcnt(String productId);
	public ShopDTO searchShopOne(String search);
}
