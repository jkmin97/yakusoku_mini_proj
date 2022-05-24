package org.yakusoku.model;

public class YakusokuAlertDto {
	private int alert_no;
	private String alert_author;
	private String alert_title;
	private String alert_content;
	private String alert_writeday;
	private int alert_readcnt;
	private int alert_rep_root;
	private int alert_rep_step;
	private int alert_rep_indent;
	
	public YakusokuAlertDto() {
		this(0, "", "", "", "", 0, 0, 0, 0);
	}
	
	public YakusokuAlertDto(int alert_no, String alert_author, String alert_title, String alert_writeday, int alert_readcnt) {
		this(alert_no, alert_author, alert_title, "", alert_writeday, alert_readcnt, 0, 0, 0);
	} // list용 생성자
	
	public YakusokuAlertDto(int alert_no, String alert_author, String alert_title, String alert_content, String alert_writeday, int alert_readcnt) {
		this(alert_no, alert_author, alert_title, alert_content, alert_writeday, alert_readcnt, 0, 0, 0);
	} // detail용 생성자
	
	public YakusokuAlertDto(int alert_no, String alert_author, String alert_title, String alert_content, String alert_writeday, int alert_readcnt, int alert_rep_root, int alert_rep_step, int alert_rep_indent) {
		this.alert_no = alert_no;
		this.alert_author = alert_author;
		this.alert_title = alert_title;
		this.alert_content = alert_content;
		this.alert_writeday = alert_writeday;
		this.alert_readcnt = alert_readcnt;
		this.alert_rep_root = alert_rep_root;
		this.alert_rep_step = alert_rep_step;
		this.alert_rep_indent = alert_rep_indent;
	}

	public int getAlert_no() {
		return alert_no;
	}

	public void setAlert_no(int alert_no) {
		this.alert_no = alert_no;
	}

	public String getAlert_author() {
		return alert_author;
	}

	public void setAlert_author(String alert_author) {
		this.alert_author = alert_author;
	}

	public String getAlert_title() {
		return alert_title;
	}

	public void setAlert_title(String alert_title) {
		this.alert_title = alert_title;
	}

	public String getAlert_content() {
		return alert_content;
	}

	public void setAlert_content(String alert_content) {
		this.alert_content = alert_content;
	}

	public String getAlert_writeday() {
		return alert_writeday;
	}

	public void setAlert_writeday(String alert_writeday) {
		this.alert_writeday = alert_writeday;
	}

	public int getAlert_readcnt() {
		return alert_readcnt;
	}

	public void setAlert_readcnt(int alert_readcnt) {
		this.alert_readcnt = alert_readcnt;
	}

	public int getAlert_rep_root() {
		return alert_rep_root;
	}

	public void setAlert_rep_root(int alert_rep_root) {
		this.alert_rep_root = alert_rep_root;
	}

	public int getAlert_rep_step() {
		return alert_rep_step;
	}

	public void setAlert_rep_step(int alert_rep_step) {
		this.alert_rep_step = alert_rep_step;
	}

	public int getAlert_rep_indent() {
		return alert_rep_indent;
	}

	public void setAlert_rep_indent(int alert_rep_indent) {
		this.alert_rep_indent = alert_rep_indent;
	}

	@Override
	public String toString() {
		return "YakusokuAlertDto [alert_no=" + alert_no + ", alert_author=" + alert_author + ", alert_title="
				+ alert_title + ", alert_content=" + alert_content + ", alert_writeday=" + alert_writeday
				+ ", alert_readcnt=" + alert_readcnt + ", alert_rep_root=" + alert_rep_root + ", alert_rep_step="
				+ alert_rep_step + ", alert_rep_indent=" + alert_rep_indent + "]";
	}
	
	
}
