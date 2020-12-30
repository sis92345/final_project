package com.example.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.vo.BoardAlbaVO;
import com.example.vo.BoardAlbaVOAll;

import lombok.extern.java.Log;

@Controller
@Log
public class DetailController {
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public String detail() {
		return "detail";
	}
	
	@RequestMapping(value = "/detail_list", method = RequestMethod.GET)
	public ModelAndView list(HttpServletRequest request ,@RequestParam("id") String id) {
		String q = "";
		switch(id) {
			case "first" : q = "서빙" ; break;
			case "second" : q = "음료";break;
			case "third" : q = "의류";break;
			case "fourth" : q = "판매";break;
			case "fifth" : q = "문구";break;
			case "sixth" : q = "놀이";break;
			case "seventh" : q = "영화";break;
			case "eighth" : q = "유통";break;
		}
		ModelAndView mav = new ModelAndView();
		if(q.equals("")) {
			q="first";
		}
		List<BoardAlbaVO> list = this.sqlSession.selectList("boardAlba.selectboardAlbaJob",q);
		mav.addObject("listinfo",list);
		mav.setViewName("components/detail_page/list");
		return mav;
	}
	
	@RequestMapping(value = "/detail_content", method = RequestMethod.GET)
	public String detailcontent(@RequestParam("num") int boardalba_seq , Model model) {
		BoardAlbaVOAll content = this.sqlSession.selectOne("boardAlba.selectboardAlbaOne",boardalba_seq);
		
		model.addAttribute("con",content);
		return "components/detail_page/detail_content";
	}
}
