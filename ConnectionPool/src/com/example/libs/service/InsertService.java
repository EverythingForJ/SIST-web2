package com.example.libs.service;

import java.sql.SQLException;

import com.example.libs.model.TelephoneDao;
import com.example.libs.model.TelephoneVO;

public class InsertService {
	private CalcService calc;
	public InsertService() { // default constructor
		this.calc = new CalcService();
	}
	
	public int insertTelephone(TelephoneVO telephone) {
		int row = 0;
		try {
			calc.calc(telephone);
			row = TelephoneDao.insert(telephone);
		} catch (SQLException e) {
			System.out.println(e);
		}
		return row;
	}
}
