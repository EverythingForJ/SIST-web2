package com.example.libs;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// Redirect 처리

@WebServlet("/servlets/servlet/Register1")
public class RegisterServlet1 extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException {
		
		PrintWriter out = res.getWriter();
		int age = Integer.parseInt(req.getParameter("userage"));
		
		if(age<20) {
			res.sendRedirect("https://jr.naver.com/");
		}else if(age<65) {
			out.println("<script>");
			out.println("location.href = 'https://www.youtube.com'; ");
			out.println("</script>");
		}else {
			res.sendRedirect("/1030/servlets/servlet/Silver");
		}
		
	}
}
