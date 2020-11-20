package com.ssafy.happyhouse.model;

public class ShopDTO {	
	private String productHeader; //헤더
	private String productPrice; // 가격 
	private String productRate; //할인률
	private String productReview; // 리뷰 조회수
	private String productbadge; // 무료배송 최저가 배너
	public ShopDTO() {
	}
	public ShopDTO(String productHeader, String productPrice, String productRate, String productReview,
			String productbadge) {
		this.productHeader = productHeader;
		this.productPrice = productPrice;
		this.productRate = productRate;
		this.productReview = productReview;
		this.productbadge = productbadge;
	}
	public String getProductHeader() {
		return productHeader;
	}
	public void setProductHeader(String productHeader) {
		this.productHeader = productHeader;
	}
	public String getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(String productPrice) {
		this.productPrice = productPrice;
	}
	public String getProductRate() {
		return productRate;
	}
	public void setProductRate(String productRate) {
		this.productRate = productRate;
	}
	public String getProductReview() {
		return productReview;
	}
	public void setProductReview(String productReview) {
		this.productReview = productReview;
	}
	public String getProductbadge() {
		return productbadge;
	}
	public void setProductbadge(String productbadge) {
		this.productbadge = productbadge;
	}
	@Override
	public String toString() {
		return "ShopDTO [productHeader=" + productHeader + ", productPrice=" + productPrice + ", productRate="
				+ productRate + ", productReview=" + productReview + ", productbadge=" + productbadge + "]";
	}
}
