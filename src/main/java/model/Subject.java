package model;

public class Subject {
	public String subcode;
	public String subname;
	public String date;
	public String time;
	public String internal_mm;
	public String external_mm;
	public String internalmarks;
	public String externalmarks;
	public String exam_session;
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getSubcode() {
		return subcode;
	}
	public void setSubcode(String subcode) {
		this.subcode = subcode;
	}
	public String getSubname() {
		return subname;
	}
	public void setSubname(String subname) {
		this.subname = subname;
	}

}
