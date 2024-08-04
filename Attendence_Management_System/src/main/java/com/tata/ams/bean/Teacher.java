package com.tata.ams.bean;

import java.util.Date;

public class Teacher {
	String tname;
	long tphone;
	Date dob;
	String temail;
	String subject;
	String dname;
	public Teacher(String tname, long tphone, Date dob, String temail, String subject, String dname) {
		super();
		this.tname = tname;
		this.tphone = tphone;
		this.dob = dob;
		this.temail = temail;
		this.subject = subject;
		this.dname = dname;
	}
	public Teacher() {
		super();
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public long getTphone() {
		return tphone;
	}
	public void setTphone(long tphone) {
		this.tphone = tphone;
	}
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	public String getTemail() {
		return temail;
	}
	public void setTemail(String temail) {
		this.temail = temail;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	@Override
	public String toString() {
		return "Teacher [tname=" + tname + ", tphone=" + tphone + ", dob=" + dob + ", temail=" + temail + ", subject="
				+ subject + ", dname=" + dname + "]";
	}
	
	
	
}