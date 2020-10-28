package com.example.libs;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// web.xml을 안쓰는 방법 (false로 바꾸고 서블릿 코딩을 web.xml에서 하지않는다

@WebServlet("/servlets/servlet/Register")
public class RegisterServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res)
     throws ServletException, IOException{
		req.setCharacterEncoding("utf-8");
		String username = req.getParameter("username");
		String userage = req.getParameter("userage"); // 형변환 필요, 결국 우리가 받는 형태는 String
		String gender = req.getParameter("gender");
		
		String hobby="";
		String[] hobbyArray = req.getParameterValues("hobby"); // checkbox라 여러개를 배열로 받는다. 그리고 여러개의 값을 가져오므로 메소드를 getParameterValues()를 사용한다.
		for(int i=0; i<hobbyArray.length; i++) {
			hobby+= hobbyArray[i]+", ";	
		}
		hobby = hobby.substring(0, hobby.length() - 2);
		
		String city = req.getParameter("city");
		
		res.setContentType("text/html;charset=utf-8");
		PrintWriter out = res.getWriter();
		
		out.println("<h1>회원가입 확인</h1>");
		out.println("<ul>");
		out.println("<li>이름 : "+username+"</li>");
		out.println("<li>나이 : "+userage+"</li>");
		out.println("<li>성별 : "+gender+"</li>");
		out.println("<li>취미 : "+hobby+"</li>");
		out.println("<li>거주지 : "+city+"</li>");
		out.println("</ul>");
		
		out.close();
	}
	
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res)
	 throws ServletException, IOException{
		this.doGet(req, res);		
	}
	
	
}
