package com.qd07.output;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class GoodsInfo {

	private int num;
	private String goodsCode;
	private String goodsName;
	private int price;
	private int cnt;
	private Timestamp regTM; 
	
	
}
