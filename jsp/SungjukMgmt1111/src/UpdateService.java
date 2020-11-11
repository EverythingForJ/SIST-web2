package com.example.libs.service;

import java.sql.SQLException;

import com.example.libs.model.StudentVO;
import com.example.libs.model.SungjukMgmtDao;

public class UpdateService {
	
	public int UpdateStudent(StudentVO student) {
		int row = 0;
		try {
			row = SungjukMgmtDao.update(student);
		}catch(SQLException e) {
			System.out.println(e);
		}
		return row;
	}
}