package org.yakusoku.model;

public class YakusokuDatingDto {
	private int dating_no;
	private String dating_concept;
	private String dating_area;
	private String dating_place;
	private String dating_information;
	private String dating_link;
	private String dating_review;
	private int dating_rating;
	
	public YakusokuDatingDto() {
		this(0, "", "", "", "", "", "", 0);
	}
	
	public YakusokuDatingDto(int dating_no, String dating_concept, String dating_area, String dating_place, String dating_information, String dating_link, String dating_review, int dating_rating) {
		this.dating_no = dating_no;
		this.dating_concept = dating_concept;
		this.dating_area = dating_area;
		this.dating_place = dating_place;
		this.dating_information = dating_information;
		this.dating_link = dating_link;
		this.dating_review = dating_review;
		this.dating_rating = dating_rating;
	}

	public int getDating_no() {
		return dating_no;
	}

	public void setDating_no(int dating_no) {
		this.dating_no = dating_no;
	}
	
	public String getDating_concept() {
		return dating_concept;
	}
	
	public void setDating_concept(String dating_concept) {
		this.dating_concept = dating_concept;
	}

	public String getDating_area() {
		return dating_area;
	}

	public void setDating_area(String dating_area) {
		this.dating_area = dating_area;
	}

	public String getDating_place() {
		return dating_place;
	}

	public void setDating_place(String dating_place) {
		this.dating_place = dating_place;
	}

	public String getDating_information() {
		return dating_information;
	}

	public void setDating_information(String dating_information) {
		this.dating_information = dating_information;
	}

	public String getDating_link() {
		return dating_link;
	}

	public void setDating_link(String dating_link) {
		this.dating_link = dating_link;
	}

	public String getDating_review() {
		return dating_review;
	}

	public void setDating_review(String dating_review) {
		this.dating_review = dating_review;
	}

	public int getDating_rating() {
		return dating_rating;
	}

	public void setDating_rating(int dating_rating) {
		this.dating_rating = dating_rating;
	}

	@Override
	public String toString() {
		return "YakusokuDatingDto [dating_no=" + dating_no + ", dating_concept=" + dating_concept + ", dating_area=" + dating_area + ", dating_place="
				+ dating_place + ", dating_information=" + dating_information + ", dating_link=" + dating_link
				+ ", dating_review=" + dating_review + ", dating_rating=" + dating_rating + "]";
	}
	
	
}
