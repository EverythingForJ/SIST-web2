package com.example.libs.controller;

import java.sql.SQLException;
import java.util.ArrayList;

import com.example.libs.model.CityDao;
import com.example.libs.model.CityVO;

public class SelectService {	
	public static ArrayList<String> getCountryCode() {
		ArrayList<String> list = null;
		try {
			list = CityDao.getCountryCode();
		}catch(SQLException e) {
			System.out.println(e);
		}
		return list;
	}

	public static ArrayList<CityVO> getCityList(String code) {
		ArrayList<CityVO> list = null;
		try {
			list = CityDao.getCityList(code);
		}catch(SQLException e) {
			System.out.println(e);
		}
		return list;
	}
}
