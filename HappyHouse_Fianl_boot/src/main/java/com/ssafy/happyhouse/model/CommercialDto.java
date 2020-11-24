package com.ssafy.happyhouse.model;


public class CommercialDto {
	private String bizesId; // 상가업소번호
	private String bizesNm; // 상호명
	private String indsLclsCd; // 상권업종대분류코드
	private String indsSclsNm; // 상권업종소분류명
	private String rdnmAdr; // 도로명 주소
	private double lon; // 경도
	private double lat; // 위도
/////////////////////////////////////////////////////////////////////////////////////////////////////
	public CommercialDto() {
	}
	
	public CommercialDto(String bizesId, String bizesNm, String indsLclsCd, String indsSclsNm, String rdnmAdr, double lon,
		double lat) {
		this.bizesId = bizesId;
		this.bizesNm = bizesNm;
		this.indsLclsCd = indsLclsCd;
		this.indsSclsNm = indsSclsNm;
		this.rdnmAdr = rdnmAdr;
		this.lon = lon;
		this.lat = lat;
	}

/////////////////////////////////////////////////////////////////////////////////////////////////////
	
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
	public String getIndsSclsNm() {
		return indsSclsNm;
	}

	public void setIndsSclsNm(String indsSclsNm) {
		this.indsSclsNm = indsSclsNm;
	}

	public String getRdnmAdr() {
		return rdnmAdr;
	}

	public void setRdnmAdr(String rdnmAdr) {
		this.rdnmAdr = rdnmAdr;
	}
	public String getIndsLclsCd() {
		return indsLclsCd;
	}
	public void setIndsLclsCd(String indsLclsCd) {
		this.indsLclsCd = indsLclsCd;
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
		return "CommercialDto [bizesId=" + bizesId + ", bizesNm=" + bizesNm + ", indsLclsCd=" + indsLclsCd
				+ ", indsSclsNm=" + indsSclsNm + ", rdnmAdr=" + rdnmAdr + ", lon=" + lon + ", lat=" + lat + "]";
	}
	
	
}
