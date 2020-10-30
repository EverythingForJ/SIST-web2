package com.example.libs;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class IncludeDemo extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException {		
		res.setContentType("text/html;charset=utf-8");
		
		PrintWriter out = res.getWriter();
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		RequestDispatcher header = req.getRequestDispatcher("/header.html");
		header.include(req, res);
		
		RequestDispatcher body = req.getRequestDispatcher("/servlets/servlet/Now");
		body.include(req, res);
		
		// RequestDispatcher rd = req.getRequestDispatcher("https://www.naver.com");
		// 상대경로만 가능
		RequestDispatcher footer = req.getRequestDispatcher("/copyright.html");
		footer.include(req, res);

		out.println("</html>");
		out.close();
	}

}
