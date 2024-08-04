package com.tata.ams.bean;

public class StudentAttendence {
	private String name;
	private String regno;
	private String dname;
	private long phone;
	private String gender;
	
	
	
	public StudentAttendence(String name, String regno, String dname, long phone, String gender) {
		super();
		this.name = name;
		this.regno = regno;
		this.dname = dname;
		this.phone = phone;
		this.gender = gender;
	}
	
	public StudentAttendence() {
		super();
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getRegno() {
		return regno;
	}
	public void setRegno(String regno) {
		this.regno = regno;
	}
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	public long getPhone() {
		return phone;
	}
	public void setPhone(long phone) {
		this.phone = phone;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}

	@Override
	public String toString() {
		return "StudentAttendence [name=" + name + ", regno=" + regno + ", dname=" + dname + ", phone=" + phone
				+ ", gender=" + gender + "]";
	}



}
