package com.example.libs;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.example.libs.model.DBClose;
import com.example.libs.model.DBConnection;

public class GetEmployee {
	public static String getEmp(String ename) {
		Connection conn = DBConnection.getConnection(); // 2,3
		String sql = " SELECT ename, sal, job, hiredate, dname, loc FROM emp e INNER JOIN dept d ON (d.deptno = e.deptno) WHERE ename = ? ";
		String str = "<ul>";
		PreparedStatement pstmt = null;
		ResultSet rs =null;
		try{
			pstmt = conn.prepareStatement(sql); // 4
			pstmt.setString(1, ename.toUpperCase());
			rs = pstmt.executeQuery(); // 5
			rs.next();
			str += "<li>이름 : " + ename.toUpperCase() + "</li>" + 
					"<li>월급 : " + rs.getDouble("sal") + "</li>" +
					"<li>직무 : " + rs.getString("job") + "</li>" +
					"<li>입사일 : " + rs.getDate("hiredate") + "</li>" +
					"<li>소속부서명 : " + rs.getString("dname") + "</li>" +
					"<li>근무지 : " + rs.getString("loc") + "</li>" +
					"</ul>";
		}catch(SQLException e) {
			System.out.println(e);
		}
		
		DBClose.close(conn, pstmt, rs); // 7
		return str;
	}
}
