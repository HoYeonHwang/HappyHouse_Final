package com.ssafy.happyhouse.model;

public class HouseInfoDTO {
	private String nno;
	private String no;
	private String dong;
	private String AptName;
	private String code;
	private String buildYear;
	private String jibun;
	private String lat;
	private String lng;
	private String dealAmount;
	
	
	
	public HouseInfoDTO() {
	}
	
	public HouseInfoDTO(String nno, String no, String dong, String aptName, String code, String buildYear, String jibun,
			String lat, String lng, String dealAmount) {
		this.nno = nno;
		this.no = no;
		this.dong = dong;
		AptName = aptName;
		this.code = code;
		this.buildYear = buildYear;
		this.jibun = jibun;
		this.lat = lat;
		this.lng = lng;
		this.dealAmount = dealAmount;
	}
	
	public String getNno() {
		return nno;
	}

	public void setNno(String nno) {
		this.nno = nno;
	}

	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public String getDong() {
		return dong;
	}
	public void setDong(String dong) {
		this.dong = dong;
	}
	public String getAptName() {
		return AptName;
	}
	public void setAptName(String aptName) {
		AptName = aptName;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getBuildYear() {
		return buildYear;
	}
	public void setBuildYear(String buildYear) {
		this.buildYear = buildYear;
	}
	public String getJibun() {
		return jibun;
	}
	public void setJibun(String jibun) {
		this.jibun = jibun;
	}
	public String getLat() {
		return lat;
	}
	public void setLat(String lat) {
		this.lat = lat;
	}
	public String getLng() {
		return lng;
	}
	public void setLng(String lng) {
		this.lng = lng;
	}
	public String getDealAmount() {
		return dealAmount;
	}
	public void setDealAmount(String dealAmount) {
		this.dealAmount = dealAmount;
	}
	@Override
	public String toString() {
		return "HouseInfoDTO [no=" + no + ", dong=" + dong + ", AptName=" + AptName + ", code=" + code + ", buildYear="
				+ buildYear + ", jibun=" + jibun + ", lat=" + lat + ", lng=" + lng + ", dealAmount=" + dealAmount + "]";
	}
}
