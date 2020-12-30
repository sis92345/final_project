package com.example.controller;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.vo.BoardAlbaVO;
import com.example.vo.GooglemapVO;
import com.example.vo.StatusVO;

import lombok.extern.java.Log;


@Controller
@Log
public class HomeController {
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(Model model) {
		//구글맵
		List<GooglemapVO> list = this.sqlSession.selectList("boardAlba.selectgooglemap");
		model.addAttribute("googleinfo",list);
		
		//status
		int allmember = this.sqlSession.selectOne("root.selectallmember");
		int gongo = this.sqlSession.selectOne("root.selectallgongo");
		int todaygongo = this.sqlSession.selectOne("root.selecttodaygongo");
		StatusVO s = new StatusVO(allmember,gongo,todaygongo);
		model.addAttribute("status",s);
		
		//slider 최근에 올린순과 조회수 많은순
		List<BoardAlbaVO> current = this.sqlSession.selectList("boardAlba.selectcurrent");
		List<BoardAlbaVO> viewcount = this.sqlSession.selectList("boardAlba.selectviewcount");
		model.addAttribute("current_list",current);
		model.addAttribute("viewcount_list",viewcount);
		
		return "index";
	}
	

}
