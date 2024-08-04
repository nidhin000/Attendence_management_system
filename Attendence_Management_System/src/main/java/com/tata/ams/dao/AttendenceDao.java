package com.tata.ams.dao;

import java.sql.Connection;
import java.util.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import com.tata.ams.bean.Attendence;
import com.tata.ams.bean.Department;
import com.tata.ams.bean.StudentAttendence;
import com.tata.ams.bean.Teacher;
import com.tata.ams.util.DbUtil;

public class AttendenceDao {
	
	
	
	public boolean validateUser(String username,String pwd,String role) {
		  
		  try {
			  Connection con = DbUtil.getConnection();
String cmd="select * from login where uname=? and password=? and role=?";

			  PreparedStatement ps= con.prepareStatement(cmd);
	  ps.setString(1,username);
	  ps.setString(2, pwd);
	  ps.setString(3,role);
	  ResultSet rs= ps.executeQuery();
	  if(rs.next())
		  return true;
	  else
		  return false;
	  
		  }
		  catch(Exception e) {
			  
		  }
		  return false;
	  }

	
	
	public boolean addDepartment(Department D) {
		try {
			Connection con = DbUtil.getConnection();
			String cmd = "insert into Department values (?,?)";
			PreparedStatement ps = con.prepareStatement(cmd);
			ps.setString(1,D.getDname());
			ps.setInt(2,D.getDstrength());
			
			ps.executeUpdate();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	
	}
	

	
	public boolean addStudentAttendence(StudentAttendence Sa) {
		try {
			Connection con = DbUtil.getConnection();
			String cmd = "insert into SAttendence values (?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(cmd);
			ps.setString(1,Sa.getName());
			ps.setString(2, Sa.getRegno());
			ps.setString(3,Sa.getDname());
			ps.setLong(4,Sa.getPhone());;
			ps.setString(5,Sa.getGender());
			ps.executeUpdate();
			return true;
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	
	}
	
	public boolean addTeacher(Teacher T) {
		try {
			Connection con = DbUtil.getConnection();
			String cmd = "insert into Teacher values (?,?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(cmd);
			ps.setString(1,T.getTname());
			ps.setLong(2,T.getTphone());
			java.sql.Date sdate = new java.sql.Date(T.getDob().getTime());
			ps.setDate(3, sdate);		
			ps.setString(4,T.getTemail());
			ps.setString(5,T.getSubject());
			ps.setString(6,T.getDname());
			System.out.println(T);
			ps.executeUpdate();
			
			return true;
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}
		public boolean deleteStudentAttendence(String Sregno) {
			try {
				  Connection con = DbUtil.getConnection();
				  String cmd="delete from SAttendence where Sregno=?";
				  PreparedStatement ps= con.prepareStatement(cmd);
				  ps.setString(1,Sregno);
				  ps.executeUpdate();
	              return true;
			}
			 catch(Exception e) {
				 e.printStackTrace();
			 }
			return false;
		}
		
		
		public boolean deleteTeacher(String tname) {
			try {
				  Connection con = DbUtil.getConnection();
				  String cmd="delete from Teacher where Tname=?";
				  PreparedStatement ps= con.prepareStatement(cmd);
				  ps.setString(1,tname);
				  ps.executeUpdate();
	              return true;
			}
			 catch(Exception e) {
				 e.printStackTrace();
			 }
			return false;
		}
		public boolean modifyStudentAttendence(StudentAttendence Sa) {
			try {
				Connection con = DbUtil.getConnection();
				String cmd = "update SAttendence set Sname=?,Sregno=?,Dname=?,Sphone=?,gender=?";
				PreparedStatement ps = con.prepareCall(cmd);
				ps.setString(1, Sa.getName());
				ps.setString(2, Sa.getRegno());
				ps.setString(3, Sa.getDname());
				ps.setLong(4, Sa.getPhone());
				ps.setString(5, Sa.getGender());
				ps.executeUpdate();
				return true;
			}
			 catch(Exception e) {
				 e.printStackTrace();
			 }
			return false;
		}
		
		
		public boolean modifyAttendence(Attendence a) {
			try {
				Connection con = DbUtil.getConnection();
				String cmd = "update Attendence set sname=?,dname=?,subject=?,attendence=?,doc=? where sregno=?";
				PreparedStatement ps = con.prepareStatement(cmd);
				ps.setString(1,a.getSname());
				ps.setString(2, a.getDname());
				ps.setString(3, a.getSubject());
				ps.setString(4, a.getAttendence());
				SimpleDateFormat smf = new SimpleDateFormat("dd/MM/yyyy");
				java.sql.Date sdate = new java.sql.Date(a.getDoc().getTime());
				ps.setDate(5,sdate);
				ps.setString(6, a.getSregno());
				System.out.println(a);
				int n=ps.executeUpdate();
				System.out.println(n+9);
				return true;
			}
			 catch(Exception e) {
				 e.printStackTrace();
			 }
			return false;
		}
	

public ArrayList<Department>getAllDepartment()
{
	ArrayList<Department> DList=new ArrayList<Department>();
	try {
		Connection con = DbUtil.getConnection();
		String cmd = "select * from Department";
		PreparedStatement ps=con.prepareStatement(cmd);
		ResultSet rs=ps.executeQuery();
		
		while(rs.next()) {
			String dname= rs.getString(1);
			int dstrength= rs.getInt(2);
			 
		Department D= new Department(dname,dstrength);
		
		DList.add(D);
		}
		return DList;
	}
	catch(Exception e) {
		e.printStackTrace();
	}
			
	return DList;		
}
	




public ArrayList<StudentAttendence>getAllStudentAttendence()
{
	ArrayList<StudentAttendence> SList=new ArrayList<StudentAttendence>();
	try {
		Connection con = DbUtil.getConnection();
		String cmd = "select * from SAttendence";
		PreparedStatement ps=con.prepareStatement(cmd);
		ResultSet rs=ps.executeQuery();
		
		while(rs.next()) {
			String sname= rs.getString(1);
			String sregno= rs.getString(2);
			String dname= rs.getString(3);
			Long sphone= rs.getLong(4);
			String gender= rs.getString(5);
			StudentAttendence S = new StudentAttendence(sname,sregno,dname,sphone,gender);
			
                SList.add(S);	
		}
		return SList;
	}
	catch(Exception e) {
		e.printStackTrace();
	}
			
	return SList;	
}
public ArrayList<Teacher>getAllTeacher()
{
	ArrayList<Teacher> TList=new ArrayList<Teacher>();
	try {
		Connection con = DbUtil.getConnection();
		String cmd = "select * from Teacher";
		PreparedStatement ps=con.prepareStatement(cmd);
		ResultSet rs=ps.executeQuery();
		
		while(rs.next()) {
			String tname= rs.getString(1);
			long tphone= rs.getLong(2);
			Date dob= rs.getDate(3);
			String temail= rs.getString(4);
			String subject= rs.getString(5);
			String dname= rs.getString(6);
		
			Teacher T = new Teacher(tname,tphone,dob,temail,subject,dname);
		    TList.add(T);	
		}
		return TList;
	}
	catch(Exception e) {
		e.printStackTrace();
	}
			
	return TList;
}
public ArrayList<Attendence>getAllAttendence()
{
	ArrayList<Attendence> AList=new ArrayList<Attendence>();
	try {
		Connection con = DbUtil.getConnection();
		String cmd = "select * from attendence";
		PreparedStatement ps=con.prepareStatement(cmd);
		ResultSet rs=ps.executeQuery();
		
		while(rs.next()) {
			String sname= rs.getString(1);
			String sregno= rs.getString(2);
			String dname= rs.getString(3);
			String subject= rs.getString(4);
			String attendence= rs.getString(5);
			Date doc=rs.getDate(6);
			
			
			 
			Attendence A= new Attendence(sname,sregno,dname,subject,attendence,doc);
		System.out.println(A);
		AList.add(A);
		}
		return AList;
	}
	catch(Exception e) {
		e.printStackTrace();
	}
			
	return AList;		
}
}
