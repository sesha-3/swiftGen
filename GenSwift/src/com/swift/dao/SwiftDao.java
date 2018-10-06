package com.swift.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCallback;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.swift.beans.Swift;

@Repository

public class SwiftDao {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
/*	
	public List<String> getBanks(String country){
		String str = "select distinct(bank_name) from bic_table where country_name='"
				+country+"' order by bank_name";
	
	}*/

}