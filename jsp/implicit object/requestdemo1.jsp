<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<%
	request.setCharacterEncoding("utf-8");
	Enumeration<String> names = request.getParameterNames();
%>
<ul>
	<% 
	while(names.hasMoreElements()){ 
		String name = names.nextElement();
		if(!name.equals("hobby")){
			String value = request.getParameter(name);
			if(!name.equals("gender")){
				out.println("<li>"+name+" : "+value+"</li>");
			}else{
				if(value.equals("0")) out.println("<li>"+name+" : "+"여성"+"</li>");
				else out.println("<li>"+name+" : "+"남성"+"</li>");
			}
		}else{
			String [] values = request.getParameterValues(name);
			String hobby = "";
			if(values == null || values.length == 0) hobby="";
			else{ // user가 한개라도 선택했다면
				for(int i=0; i<values.length; i++){
					hobby += values[i]+", ";
				}
				hobby = hobby.substring(0, hobby.length()-2);
			}
			out.println("<li>"+name+" : "+hobby+"</li>");
		}
	}
	%> 
</ul>


