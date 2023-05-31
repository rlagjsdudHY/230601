package com.qd07.output;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Shop {
	
	@Autowired
	private ShopDataAccess shopDataAccess;
	
	
	@RequestMapping("/goods")
	public String mtdGoods(Model model) {

		model.addAttribute("memberList",shopDataAccess.mtdList());
		return "/product/goodsList";
	}
	
	
	
	

}
