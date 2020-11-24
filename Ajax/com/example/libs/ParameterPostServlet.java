package com.example.libs;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlets/servlet/ParameterPost")
public class ParameterPostServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String phone = request.getParameter("phone");
		String str = "<span style='color:green; text-dexoration:underline; font-size:1.5em'>" + name + "</span>님의 나이는 " + age + "이고, 휴대폰 번호는 " + phone +
		" 입니다.";
		out.println(str);
		out.close();
	}
		
	private String entoutf(String en){
		String utf8 = null;
		try{
			utf8 = new String(en.getBytes("ISO8859_1"), "utf-8");
		}catch(java.io.UnsupportedEncodingException e){}
			return utf8;
	}
	
}
