package com.tata.ams.service;

import java.util.ArrayList;

import com.tata.ams.bean.Attendence;
import com.tata.ams.bean.Department;
import com.tata.ams.bean.StudentAttendence;
import com.tata.ams.bean.Teacher;
import com.tata.ams.dao.AttendenceDao;

public class AttendenceService {
	AttendenceDao dao= new AttendenceDao();
	
	public boolean validateUser(String username,String pwd,String role) {
		 boolean flag= dao.validateUser(username, pwd, role);
		 return flag;	 
	 }
	public boolean addDepartment(Department D) {
		boolean flag= dao.addDepartment(D);
		return flag;
	}

	public boolean addStudentAttendence(StudentAttendence Sa) {
		boolean flag= dao.addStudentAttendence(Sa);
		return flag;
	}
	
	public boolean addTeacher(Teacher T) {
		boolean flag= dao.addTeacher(T);
		return flag;
	}
	
	public boolean deleteStudentAttendence(String Sregno) {
		boolean flag = dao.deleteStudentAttendence(Sregno);
		return flag;
	}
	
	public boolean deleteTeacher(String Tname) {
		boolean flag = dao.deleteTeacher(Tname);
		return flag;
	}
	
	public boolean modifyStudentAttendence(StudentAttendence Sa) {
		boolean flag = dao.modifyStudentAttendence(Sa);
		return flag;
	}
	
	public boolean modifyAttendence(Attendence a) {
		boolean flag = dao.modifyAttendence(a);
		return flag;
	}
	
	
	public ArrayList<Department> getAllDepartment(){
		ArrayList<Department> DList = dao.getAllDepartment();
		return DList;
	}
		
	public ArrayList<StudentAttendence> getAllStudentAttendence(){
		ArrayList<StudentAttendence> SList = dao.getAllStudentAttendence();
		return SList;
	}
	
	public ArrayList<Teacher> getAllTeacher(){
		ArrayList<Teacher> TList = dao.getAllTeacher();		
		return TList;
	}
	
	public ArrayList<Attendence> getAllAttendence(){
		ArrayList<Attendence> AList = dao.getAllAttendence();		
		return AList;
	}
}
