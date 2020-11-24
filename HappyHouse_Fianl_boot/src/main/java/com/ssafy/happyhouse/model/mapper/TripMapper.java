package com.ssafy.happyhouse.model.mapper;

import java.util.List;

import com.ssafy.happyhouse.model.TripDTO;

public interface TripMapper {
	public List<TripDTO> getTrip();
	public List<TripDTO> searchTrip(String search);
	public int insertTrip(TripDTO dto);
	public TripDTO searchTripOne(String search);

}
