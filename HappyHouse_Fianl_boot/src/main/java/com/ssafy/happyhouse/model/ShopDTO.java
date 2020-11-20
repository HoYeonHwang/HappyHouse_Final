package com.ssafy.happyhouse.model;

public class ShopDTO {	
	private int productId;// id
	private String productHeader; //헤더
	private String productPrice; // 가격 
	private String productRate; //할인률
	private String productReview; // 리뷰 조회수
	private String productimg; // 리뷰 조회수

	public ShopDTO() {
	}
	public ShopDTO(String productHeader, String productPrice, String productRate, String productReview,
			String productimg) {
		this.productHeader = productHeader;
		this.productPrice = productPrice;
		this.productRate = productRate;
		this.productReview = productReview;
		this.productimg = productimg;
	}
	public ShopDTO(int productId, String productHeader, String productPrice, String productRate, String productReview,
			String productimg) {
		this.productId = productId;
		this.productHeader = productHeader;
		this.productPrice = productPrice;
		this.productRate = productRate;
		this.productReview = productReview;
		this.productimg = productimg;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
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

	public String getProductimg() {
		return productimg;
	}

	public void setProductimg(String productimg) {
		this.productimg = productimg;
	}
	@Override
	public String toString() {
		return "ShopDTO [productId=" + productId + ", productHeader=" + productHeader + ", productPrice=" + productPrice
				+ ", productRate=" + productRate + ", productReview=" + productReview + ", productimg=" + productimg
				+ "]";
	}
}
