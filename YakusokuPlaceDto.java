package org.yakusoku.model;

public class YakusokuPlaceDto {
	private int place_no;
	private String place_name;
	private String place_address;
	private int place_star;
	private String place_other;
	private String place_site;
	private String place_reservation;
	
	public YakusokuPlaceDto() {
		this(0, "", "", 0, "", "", "");
	}
	
	public YakusokuPlaceDto(int place_no, String place_name, String place_address, int place_star, String place_other, String place_site, String place_reservation) {
		this.place_no = place_no;
		this.place_name = place_name;
		this.place_address = place_address;
		this.place_star = place_star;
		this.place_other = place_other;
		this.place_site = place_site;
		this.place_reservation = place_reservation;
	}

	public int getPlace_no() {
		return place_no;
	}

	public void setPlace_no(int place_no) {
		this.place_no = place_no;
	}

	public String getPlace_name() {
		return place_name;
	}

	public void setPlace_name(String place_name) {
		this.place_name = place_name;
	}

	public String getPlace_address() {
		return place_address;
	}

	public void setPlace_address(String place_address) {
		this.place_address = place_address;
	}

	public int getPlace_star() {
		return place_star;
	}

	public void setPlace_star(int place_star) {
		this.place_star = place_star;
	}

	public String getPlace_other() {
		return place_other;
	}

	public void setPlace_other(String place_other) {
		this.place_other = place_other;
	}

	public String getPlace_site() {
		return place_site;
	}

	public void setPlace_site(String place_site) {
		this.place_site = place_site;
	}

	public String getPlace_reservation() {
		return place_reservation;
	}

	public void setPlace_reservation(String place_reservation) {
		this.place_reservation = place_reservation;
	}

	@Override
	public String toString() {
		return "YakusokuPlaceDto [place_no=" + place_no + ", place_name=" + place_name + ", place_address="
				+ place_address + ", place_star=" + place_star + ", place_other=" + place_other + ", place_site="
				+ place_site + ", place_reservation=" + place_reservation + "]";
	}
	
	
}
