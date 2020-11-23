package com.ssafy.happyhouse.model;

import java.util.List;

public class CommercialDto {
	private String bizesId;
	private String bizesNm;
	private double lon;
	private double lat;
	public CommercialDto() {
	}
	public CommercialDto(String bizesId, String bizesNm, double lon, double lat) {
		this.bizesId = bizesId;
		this.bizesNm = bizesNm;
		this.lon = lon;
		this.lat = lat;
	}
	public String getBizesId() {
		return bizesId;
	}
	public void setBizesId(String bizesId) {
		this.bizesId = bizesId;
	}
	public String getBizesNm() {
		return bizesNm;
	}
	public void setBizesNm(String bizesNm) {
		this.bizesNm = bizesNm;
	}
	public double getLon() {
		return lon;
	}
	public void setLon(double lon) {
		this.lon = lon;
	}
	public double getLat() {
		return lat;
	}
	public void setLat(double lat) {
		this.lat = lat;
	}
	@Override
	public String toString() {
		return "CommercialDto [bizesId=" + bizesId + ", bizesNm=" + bizesNm + ", lon=" + lon + ", lat=" + lat + "]";
	}
	
}
