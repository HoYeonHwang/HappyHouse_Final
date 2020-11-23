package com.ssafy.happyhouse.model;

import org.springframework.web.multipart.MultipartFile;

public class ShopDTO {
	private int productId;// id
	private String productHeader; // 헤더
	private String productPrice; // 가격
	private String productRate; // 할인률
	private String productContent; // 상품 내용
	private String productReview; // 리뷰 조회수
	private String productBook; // 예약 여부
	private String productTime; // 올린날
	private String productNick; // 판매자 닉네임
	private String productPhone; // 판매자 전화번호
	private String porductImg;

	public ShopDTO() {
	}

	public ShopDTO(int productId, String productHeader, String productPrice, String productRate, String productContent,
			String productReview, String productBook, String productTime, String productNick, String productPhone,
			String porductImg) {
		this.productId = productId;
		this.productHeader = productHeader;
		this.productPrice = productPrice;
		this.productRate = productRate;
		this.productContent = productContent;
		this.productReview = productReview;
		this.productBook = productBook;
		this.productTime = productTime;
		this.productNick = productNick;
		this.productPhone = productPhone;
		this.porductImg = porductImg;
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

	public String getProductContent() {
		return productContent;
	}

	public void setProductContent(String productContent) {
		this.productContent = productContent;
	}

	public String getProductReview() {
		return productReview;
	}

	public void setProductReview(String productReview) {
		this.productReview = productReview;
	}

	public String getProductBook() {
		return productBook;
	}

	public void setProductBook(String productBook) {
		this.productBook = productBook;
	}

	public String getProductTime() {
		return productTime;
	}

	public void setProductTime(String productTime) {
		this.productTime = productTime;
	}

	public String getProductNick() {
		return productNick;
	}

	public void setProductNick(String productNick) {
		this.productNick = productNick;
	}

	public String getProductPhone() {
		return productPhone;
	}

	public void setProductPhone(String productPhone) {
		this.productPhone = productPhone;
	}

	public String getPorductImg() {
		return porductImg;
	}

	public void setPorductImg(String porductImg) {
		this.porductImg = porductImg;
	}

	@Override
	public String toString() {
		return "ShopDTO [productId=" + productId + ", productHeader=" + productHeader + ", productPrice=" + productPrice
				+ ", productRate=" + productRate + ", productContent=" + productContent + ", productReview="
				+ productReview + ", productBook=" + productBook + ", productTime=" + productTime + ", productNick="
				+ productNick + ", productPhone=" + productPhone + ", porductImg=" + porductImg + "]";
	}

}
