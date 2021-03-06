package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class Check_User_Session_about extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		this.doPost(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession sess=request.getSession(false);
		if(sess!=null)
		{
			request.setAttribute("header", "loggedinHeader.jsp");
		}
		else
		{
			request.setAttribute("header", "header.jsp");
		}
		
		System.out.println("Servlet"+request.getAttribute("header"));
		
		RequestDispatcher rd=request.getRequestDispatcher("JSP/about.jsp");
		rd.forward(request, response);
		
		
	}

}
