package com.ssafy.happyhouse.model;

import java.util.List;

public class CommercialDto {
	public Response response;

	public class Response {
		public Header header;
		public Body body;
	}

	public class Header {
		public String resultCode;
		public String resultMsg;
	}

	public class Body {
		public Items items;
		public int numOfRows;
		public int pageNo;
		public int totalCount;
	}

	public class Items {
		public List<Item> item;
	}

	public class Item {
		public String bizesId;
		public String bizesNm;
		public double lon;
		public double lat;
	}
}
