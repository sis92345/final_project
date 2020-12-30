package com.example.controller;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.vo.BoardAlbaVO;

import lombok.extern.java.Log;

@Controller
@Log
public class SearchController {
	@Autowired
	private SqlSession sqlSession;

	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String search() {
		return "search";
	}
	@RequestMapping(value = "/search_list", method = RequestMethod.GET )
	public String list(@RequestParam("id") String query , Model model) {
		System.out.println(query);
		List<BoardAlbaVO> list = this.sqlSession.selectList("boardAlba.selectboardAlbatitle",query);
		model.addAttribute("results",list);
		return "components/search_page/result_card";
	}
}
