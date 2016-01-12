package com.app.user;

import org.springframework.web.multipart.MultipartFile;

public class AddMovie {
	
	String moviename;
	String actName;
	MultipartFile uploadImage;
	String comment;
	String upcomingProduct;

	
	public String getMoviename() {
		return moviename;
	}
	public void setMoviename(String moviename) {
		this.moviename = moviename;
	}
	public String getActName() {
		return actName;
	}
	public void setActName(String actName) {
		this.actName = actName;
	}
	public MultipartFile getUploadImage() {
		return uploadImage;
	}
	public void setUploadImage(MultipartFile uploadImage) {
		this.uploadImage = uploadImage;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public String getUpcomingProduct() {
		return upcomingProduct;
	}
	public void setUpcomingProduct(String upcomingProduct) {
		this.upcomingProduct = upcomingProduct;
	}
	
	
	
	


}
