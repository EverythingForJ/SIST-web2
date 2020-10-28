package com.example.libs;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlets/servlet/DbTest")
public class DbTestServlet extends HttpServlet{
	protected void doGet(HttpServletRequest req, HttpServletResponse res)
	throws ServletException, IOException{
		String countrycode = req.getParameter("countrycode"); // url에서 직접. /DbTest?countrycode=USA
		if(countrycode ==null || countrycode.equals("")) countrycode = "KOR";
		
		
		PrintWriter out = res.getWriter();
		out.println("<h1>City table's Korean Cities List</h1>");
		out.println("<ul>");
		try{
			ResultSet rs = this.getResultSet(countrycode);
			while(rs.next()) { // 6
				String str = String.format("%d, %s, %s, %s, %d", rs.getInt("ID"), rs.getString("Name"), rs.getString("CountryCode"), rs.getString("District"), rs.getInt("Population"));
				
				out.println("<li>"+str+"</li>");
			}
		}catch(SQLException e) {
			System.out.println(e);
		}
		out.println("</ul>");
		out.close();
	}
	
	private ResultSet getResultSet(String countrycode) throws SQLException {
		DBConnection dbconn = new DBConnection();
		Connection conn = dbconn.getConnection();
		String sql = "select * from city where countrycode = ? ";
		PreparedStatement pstmt = conn.prepareStatement(sql); // 4
		pstmt.setString(1, countrycode);
		ResultSet rs = pstmt.executeQuery(); // 5
		DBClose.close(conn, pstmt); // 7
		return rs;
	}
}
