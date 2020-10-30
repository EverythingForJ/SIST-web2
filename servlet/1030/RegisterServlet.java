package com.example.libs;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlets/servlet/Register")
public class RegisterServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException {
		int age = Integer.parseInt(req.getParameter("userage"));
		
		if(age<20) {
			ServletContext context = this.getServletContext();
			RequestDispatcher teenage = context.getRequestDispatcher("/servlets/servlet/Teen");
			teenage.forward(req, res);
		}else if(age<65) {
			RequestDispatcher adult = req.getRequestDispatcher("/servlets/servlet/Adult");
			adult.forward(req, res);
		}else {
			RequestDispatcher silver = req.getRequestDispatcher("/servlets/servlet/Silver");
			silver.forward(req, res);
		}
		
	}
}
