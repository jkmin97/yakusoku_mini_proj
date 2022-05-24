package org.yakusoku.model;

public class YakusokuPackageDto {
	private int package_no;
	private String package_name;
	private String package_comment;
	private String package_price;
	
	public YakusokuPackageDto() {
		this(0, "", "", "");
	}
	
	public YakusokuPackageDto(int package_no, String package_name, String package_comment, String package_price) {
		this.package_no = package_no;
		this.package_name = package_name;
		this.package_comment = package_comment;
		this.package_price = package_price;
	}

	public int getPackage_no() {
		return package_no;
	}

	public void setPackage_no(int package_no) {
		this.package_no = package_no;
	}

	public String getPackage_name() {
		return package_name;
	}

	public void setPackage_name(String package_name) {
		this.package_name = package_name;
	}

	public String getPackage_comment() {
		return package_comment;
	}

	public void setPackage_comment(String package_comment) {
		this.package_comment = package_comment;
	}

	public String getPackage_price() {
		return package_price;
	}

	public void setPackage_price(String package_price) {
		this.package_price = package_price;
	}

	@Override
	public String toString() {
		return "YakusokuPackageDto [package_no=" + package_no + ", package_name=" + package_name + ", package_comment="
				+ package_comment + ", package_price=" + package_price + "]";
	}
	
	
} // 지울 거.
