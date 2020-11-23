package com.ssafy.happyhouse.model;

import org.springframework.web.multipart.MultipartFile;

public class MyFileDto {
	private int fno;
	private String filename;
	private String origin;
	private MultipartFile uploadFile;
	public MyFileDto() {
	}
	
	public MyFileDto(int fno, String filename, String origin, MultipartFile uploadFile) {
		this.fno = fno;
		this.filename = filename;
		this.origin = origin;
		this.uploadFile = uploadFile;
	}

	public MultipartFile getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}
	public int getFno() {
		return fno;
	}
	public void setFno(int fno) {
		this.fno = fno;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String getOrigin() {
		return origin;
	}
	public void setOrigin(String origin) {
		this.origin = origin;
	}
	@Override
	public String toString() {
		return "MyFileDto [fno=" + fno + ", filename=" + filename + ", origin=" + origin + ", uploadFile=" + uploadFile
				+ "]";
	}
	
	
	
}
