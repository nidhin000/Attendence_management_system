package com.tata.ams.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tata.ams.bean.Attendence;
import com.tata.ams.bean.Department;
import com.tata.ams.bean.StudentAttendence;
import com.tata.ams.service.AttendenceService;
import com.tata.ams.util.DbUtil;

/**
 * Servlet implementation class TeacherServlet
 */
public class TeacherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TeacherServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		AttendenceService service= new AttendenceService();
		String target="";
		String action= request.getParameter("action");
		
		switch(action) {	
		
		case "Attendence Lists":
			ArrayList<Attendence> AList=service.getAllAttendence();
			
			request.setAttribute("AList", AList);
			target="UserDisplay.jsp";
			break;
	}
		RequestDispatcher rd = request.getRequestDispatcher(target);
	       rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
