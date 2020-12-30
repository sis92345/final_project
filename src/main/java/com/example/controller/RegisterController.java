package com.example.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.vo.AlbaMemberVO;
import com.example.vo.ComMemberVO;
import com.example.vo.MemberVO;

@Controller
public class RegisterController {
	@Autowired
	private SqlSession sqlSession;
	
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register() {
		return "register";
	}
	@RequestMapping(value = "/register_alba", method = RequestMethod.GET)
	public String registeralba() {
		return "register_alba";
	}
	@RequestMapping(value = "/register_sajang", method = RequestMethod.GET)
	public String registersajang() {
		return "register_sajang";
	}
	@RequestMapping(value = "/register_alba", method = RequestMethod.POST)
	public String registeralbap(AlbaMemberVO albamemberVO) {
		this.sqlSession.insert("member.insertMember",albamemberVO);
		this.sqlSession.insert("member.insertAlbaMember",albamemberVO);
		return "index";
	}
	@RequestMapping(value = "/register_sajang", method = RequestMethod.POST)
	public String registersajang(ComMemberVO commemberVO) {
		this.sqlSession.insert("member.insertMember", commemberVO);	   
		this.sqlSession.insert("member.insertComMember", commemberVO);
		return "index";
	}
	@PostMapping(value="/modallogin")
	@ResponseBody
	public Map<String,Object> modallogin(MemberVO m ,HttpSession session) {
		MemberVO loginmember = this.sqlSession.selectOne("member.login",m);
		Map<String,Object> map = new HashMap<String, Object>();
		if(loginmember==null) {
			map.put("code","false");
		}
		if(loginmember!=null && loginmember.getDivision()==1) {
			map.put("code","1");
			AlbaMemberVO a = this.sqlSession.selectOne("selectAlbamemberOne",loginmember.getId());
			session.setAttribute("sessioninfo",a);
		}
		if(loginmember!=null && loginmember.getDivision()==2) {
			map.put("code","2");
			ComMemberVO c = this.sqlSession.selectOne("selectCommemberOne",loginmember.getId());
			session.setAttribute("sessioninfo",c);
		}
		return map;
	}
	@GetMapping(value="/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "index";
	}
}
