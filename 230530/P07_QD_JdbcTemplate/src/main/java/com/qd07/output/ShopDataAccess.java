package com.qd07.output;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class ShopDataAccess {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public List<GoodsInfo> mtdList() {
		
		String sql = "select * from memberList order by num desc";
		List<GoodsInfo> objList = jdbcTemplate.query(
					sql,
					new BeanPropertyRowMapper<GoodsInfo>(GoodsInfo.class)
				);
		
		return objList;
				
				
	}

}
