package com.customer;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/IncludeDetails")  
public class IncludeDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		int phone = Integer.parseInt(request.getParameter("phone"));
		String email = request.getParameter("email");
		String userName = request.getParameter("uid");
		String password = request.getParameter("pw");
		String Bday = request.getParameter("bday");
		
		boolean isTrue;
		
		isTrue=customerDBUtil.insertcustomer(id, name, phone, email, userName, password, Bday);
		
		if (isTrue==true) {
			RequestDispatcher dis=request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	
	}


	}


