package com.app.user;

import org.springframework.web.multipart.MultipartFile;

public class AddMobiles {
	
	String mobileName;
	String companyName;
	String Model;
	String price;
	String comment;
	String upcomingProduct;
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	MultipartFile uploadImage1;
	MultipartFile uploadImage2;
	MultipartFile uploadImage3;
	MultipartFile uploadImage4;
	MultipartFile uploadImage5;
	MultipartFile uploadImage6;
	public String getMobileName() {
		return mobileName;
	}
	public void setMobileName(String mobileName) {
		this.mobileName = mobileName;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public MultipartFile getUploadImage1() {
		return uploadImage1;
	}
	public String getModel() {
		return Model;
	}
	public void setModel(String model) {
		Model = model;
	}
	public void setUploadImage1(MultipartFile uploadImage1) {
		this.uploadImage1 = uploadImage1;
	}
	public MultipartFile getUploadImage2() {
		return uploadImage2;
	}
	public void setUploadImage2(MultipartFile uploadImage2) {
		this.uploadImage2 = uploadImage2;
	}
	public MultipartFile getUploadImage3() {
		return uploadImage3;
	}
	public void setUploadImage3(MultipartFile uploadImage3) {
		this.uploadImage3 = uploadImage3;
	}
	public MultipartFile getUploadImage4() {
		return uploadImage4;
	}
	public void setUploadImage4(MultipartFile uploadImage4) {
		this.uploadImage4 = uploadImage4;
	}
	public MultipartFile getUploadImage5() {
		return uploadImage5;
	}
	public void setUploadImage5(MultipartFile uploadImage5) {
		this.uploadImage5 = uploadImage5;
	}
	public MultipartFile getUploadImage6() {
		return uploadImage6;
	}
	public void setUploadImage6(MultipartFile uploadImage6) {
		this.uploadImage6 = uploadImage6;
	}
	public String getUpcomingProduct() {
		return upcomingProduct;
	}
	public void setUpcomingProduct(String upcomingProduct) {
		this.upcomingProduct = upcomingProduct;
	}
	
	
	

}
