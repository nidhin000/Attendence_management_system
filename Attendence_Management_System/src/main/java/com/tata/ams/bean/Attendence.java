package com.tata.ams.bean;

import java.util.Date;

public class Attendence {
	String sname;
	String sregno;
	String dname;
	String subject;
	String attendence;
	Date doc;
	public Attendence(String sname, String sregno, String dname, String subject, String attendence, Date doc) {
		super();
		this.sname = sname;
		this.sregno = sregno;
		this.dname = dname;
		this.subject = subject;
		this.attendence = attendence;
		this.doc = doc;
	}
	public Attendence() {
		super();
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getSregno() {
		return sregno;
	}
	public void setSregno(String sregno) {
		this.sregno = sregno;
	}
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getAttendence() {
		return attendence;
	}
	public void setAttendence(String attendence) {
		this.attendence = attendence;
	}
	public Date getDoc() {
		return doc;
	}
	public void setDoc(Date doc) {
		this.doc = doc;
	}
	@Override
	public String toString() {
		return "Attendence [sname=" + sname + ", sregno=" + sregno + ", dname=" + dname + ", subject=" + subject
				+ ", attendence=" + attendence + ", doc=" + doc + "]";
	}
	
}
