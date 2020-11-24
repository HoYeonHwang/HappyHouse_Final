package com.ssafy.happyhouse.model;

public class TripDTO {
	
	private int tripId;
	private  String tripHeader;
	private  String tripContent;
	private  String tripDate;
	private  String tripImg;
	
	public TripDTO() {
	}

	public TripDTO(int tripId, String tripHeader, String tripContent, String tripDate, String tripImg) {
		this.tripId = tripId;
		this.tripHeader = tripHeader;
		this.tripContent = tripContent;
		this.tripDate = tripDate;
		this.tripImg = tripImg;
	}

	public int getTripId() {
		return tripId;
	}

	public void setTripId(int tripId) {
		this.tripId = tripId;
	}

	public String getTripHeader() {
		return tripHeader;
	}

	public void setTripHeader(String tripHeader) {
		this.tripHeader = tripHeader;
	}

	public String getTripContent() {
		return tripContent;
	}

	public void setTripContent(String tripContent) {
		this.tripContent = tripContent;
	}

	public String getTripDate() {
		return tripDate;
	}

	public void setTripDate(String tripDate) {
		this.tripDate = tripDate;
	}

	public String getTripImg() {
		return tripImg;
	}

	public void setTripImg(String tripImg) {
		this.tripImg = tripImg;
	}

	@Override
	public String toString() {
		return "TripDTO [tripId=" + tripId + ", tripHeader=" + tripHeader + ", tripContent=" + tripContent
				+ ", tripDate=" + tripDate + ", tripImg=" + tripImg + "]";
	}
	
}
