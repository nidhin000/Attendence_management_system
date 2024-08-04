package com.tata.ams.bean;

public class Department {
	String dname;
	int dstrength;
	public Department(String dname, int dstrength) {
		
		this.dname = dname;
		this.dstrength = dstrength;
	}
	public String getDname() {
		return this.dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	public int getDstrength() {
		return this.dstrength;
	}
	public void setDstrength(int dstrength) {
		this.dstrength = dstrength;
	}
	
	public Department() {
		
	
	
	}
	@Override
	public String toString() {
		return "Department [dname=" + dname + ", dstrength=" + dstrength + "]";
	}
	
	
	
	
	
	
	
	
	
}
