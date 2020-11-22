package com.ssafy.happyhouse.model;

public class ShopDTO {	
	private int productId;// id
	private String productHeader; //헤더
	private String productPrice; // 가격 
	private String productRate; //할인률
	private String productContent; // 상품 내용
	private String productReview; // 리뷰 조회수
	private String productimg; // 상품 이미지
	private String productBook; // 예약 여부
	private String productTime; // 올린날
	private String productNick; // 판매자 닉네임
	private String productPhone; //판매자 전화번호
	
	public ShopDTO() {
	}

	public ShopDTO(String productHeader, String productPrice, String productRate, String productContent,
			String productReview, String productimg, String productBook, String productTime, String productNick,
			String productPhone) {
		this.productHeader = productHeader;
		this.productPrice = productPrice;
		this.productRate = productRate;
		this.productContent = productContent;
		this.productReview = productReview;
		this.productimg = productimg;
		this.productBook = productBook;
		this.productTime = productTime;
		this.productNick = productNick;
		this.productPhone = productPhone;
	}

	public ShopDTO(int productId, String productHeader, String productPrice, String productRate, String productContent,
			String productReview, String productimg, String productBook, String productTime, String productNick,
			String productPhone) {
		this.productId = productId;
		this.productHeader = productHeader;
		this.productPrice = productPrice;
		this.productRate = productRate;
		this.productContent = productContent;
		this.productReview = productReview;
		this.productimg = productimg;
		this.productBook = productBook;
		this.productTime = productTime;
		this.productNick = productNick;
		this.productPhone = productPhone;
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

	public String getProductimg() {
		return productimg;
	}

	public void setProductimg(String productimg) {
		this.productimg = productimg;
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

	@Override
	public String toString() {
		return "ShopDTO [productId=" + productId + ", productHeader=" + productHeader + ", productPrice=" + productPrice
				+ ", productRate=" + productRate + ", productContent=" + productContent + ", productReview="
				+ productReview + ", productimg=" + productimg + ", productBook=" + productBook + ", productTime="
				+ productTime + ", productNick=" + productNick + ", productPhone=" + productPhone + "]";
	}
	
	
	
}
