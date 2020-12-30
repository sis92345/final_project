package com.example.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.extern.java.Log;

@Controller
@Log
public class AlbaController {
	@Autowired
	private SqlSession sqlSession;

	@RequestMapping(value = "/alba", method = RequestMethod.GET)
	public String search() {
		return "alba";
	}
	
	@GetMapping(value="/alba/getpage")
	public String getpage(@RequestParam("id") String id) {
		
		String address = "components/alba_page/"+id;
		return address;
	}
	
}
