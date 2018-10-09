package com.swift.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository

public class SwiftDaoImpl implements SwiftDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public void getBanks(List<String> codes){
		
		try{
		    //jdbcTemplate = new JdbcTemplate(dataSource);
			jdbcTemplate.update("INSERT INTO SWIFT_OUTPUT_DATABASE (BASIC_BLOCK, USER_BLOCK, APP_BLOCK, TEXT, TRAILER) VALUES ('"+codes.get(0)+
					"','"+codes.get(1)+
					"','"+codes.get(2)+
					"','"+codes.get(3)+
					"','"+codes.get(4)+
					"')");
			System.out.println("in DAO" + codes);
		}catch(Exception e){
			System.out.println(e);
		}
	}

}
