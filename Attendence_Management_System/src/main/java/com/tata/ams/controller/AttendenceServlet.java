package com.tata.ams.controller;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tata.ams.bean.Attendence;
import com.tata.ams.bean.Department;
import com.tata.ams.bean.StudentAttendence;
import com.tata.ams.bean.Teacher;
import com.tata.ams.service.AttendenceService;

/**
 * Servlet implementation class AttendenceServlet
 */
public class AttendenceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public AttendenceServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AttendenceService service= new AttendenceService();
		String target="";
		String action= request.getParameter("action");
		
		if(action.equals("Login")) {
			String username=request.getParameter("username");
			String password=request.getParameter("password");
			String role=request.getParameter("role");
			if(role.equals("Admin")) {
			boolean fl=service.validateUser(username, password, role);
			if(fl) {
				HttpSession sn = request.getSession();
				sn.setAttribute("username", username);
				target="Home.jsp";
			}else
				target="Error.jsp";
			
			}
			else if(role.equals("User")) {
				boolean fl=service.validateUser(username, password, role);
				if(fl) {
					HttpSession sn = request.getSession();
					sn.setAttribute("username", username);
					target="UDasboard.jsp";
				}else
					target="Error.jsp";
			}
			
			 RequestDispatcher rd = request.getRequestDispatcher(target);
		       rd.forward(request, response); 
		}
		else {
			switch (action) {
			
			case "Student List":
				ArrayList<StudentAttendence> SList=service.getAllStudentAttendence();
				request.setAttribute("SList", SList);
				target="StudentView.jsp";
				break;
				
				
			case "Teacher List":
				ArrayList<Teacher> TList=service.getAllTeacher();
				request.setAttribute("TList", TList);
				target="TeacherView.jsp";
				break;
				
			case "Department List":
				ArrayList<Department> DList=service.getAllDepartment();
				request.setAttribute("DList", DList);
				target="DepartmentView.jsp";
				break;
				
			case "Attendence List":
				ArrayList<Attendence> AList=service.getAllAttendence();
				System.out.println(AList);
				request.setAttribute("AList", AList);
				target="Attendenceview.jsp";
				break;
				
				
				
			case "Modify Attendence":
				String sname = request.getParameter("sname");
				String sregno = request.getParameter("sregno");
				String dname1 = request.getParameter("dname");
				String subject1= request.getParameter("subject");
				String attendence= request.getParameter("attendence");
				String doc = request.getParameter("doc");
				SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
				
				try {
					Date doc1 = sdf.parse(doc);
					Attendence a = new Attendence(sname,sregno,dname1,subject1,attendence,doc1);
					boolean flag = service.modifyAttendence(a);
					target="Modify.jsp";
				}
				catch(Exception e) {
					e.printStackTrace();
				}
				
				break;
				
			case "Add Student":
				
				target="AddStudent.jsp";
				break;
			case "Insert Student":
		        String Sname = request.getParameter("name");
		        String Sregno = request.getParameter("regno");
		        String Dname = request.getParameter("dname");
		        Long Sphone =Long.parseLong(request.getParameter("phone"));
		        String gender = request.getParameter("gender");		        
		        
		   
		        StudentAttendence Sa = new StudentAttendence(Sname,Sregno, Dname, Sphone, gender);
		        boolean flag = service.addStudentAttendence(Sa);
		        target = "insertSview.jsp";
		        service.addStudentAttendence(Sa);
		        break;
		        
		        
			

 case "Delete Student":
	 target= "DeleteStudent.jsp";
	 break;
	 
 case "Remove Student":
				String Sregno1=request.getParameter("regno");
				boolean dflag = service.deleteStudentAttendence(Sregno1);
				target= "RemoveSview.jsp";
				service.deleteStudentAttendence(Sregno1);
				break;
				
 case "Add Teacher":
	 target="AddDeleteTeacher.jsp";
	    
     
     break;

 case "Insert Teacher":
	 String tname = request.getParameter("tname");
     Long tphone =Long.parseLong(request.getParameter("tPhone"));
     String dobString=request.getParameter("dob");
    String temail=request.getParameter("temail");
     String subject = request.getParameter("subject");		        
     String dname = request.getParameter("dname");	
     SimpleDateFormat smf=new SimpleDateFormat("dd/mm/yyyy");
     try {
    	Date dob = smf.parse(dobString); 
    	 Teacher T = new Teacher(tname, tphone,dob,temail, subject,dname);
    	
    	 request.setAttribute("teacher", T);
         boolean tflag = service.addTeacher(T);
         target="add.jsp";
        
       
     }
     catch(Exception e) {
    	 e.printStackTrace();
     }
     break;
case "Delete Teacher":
		String tname1=request.getParameter("tname");
		boolean tflag = service.deleteTeacher(tname1);
		target= "AddDeleteTeacher.jsp";
		break;
				
				
				
				
			}
			RequestDispatcher rd = request.getRequestDispatcher(target);
		       rd.forward(request, response);
			
		}
		
		
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
