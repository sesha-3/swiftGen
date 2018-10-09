package com.swift.service;

import java.util.List;


import org.springframework.stereotype.Service;


import com.swift.dao.SwiftDaoImpl;

@Service
public class SwiftService 
{
	private SwiftDaoImpl mydao = new SwiftDaoImpl();
	
	public void getBanks(List<String> country){
		mydao.getBanks(country);
	}


}
