package com.example.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.vo.BoardTalkVO;
import com.example.vo.CommentVO;

import lombok.extern.java.Log;
import oracle.jdbc.proxy.annotation.Post;

@Controller
@Log
public class CommunityController {
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value = "/community", method = RequestMethod.GET)
	public String communitymain(Model model ,  @RequestParam("page")int page) {
		int count = this.sqlSession.selectOne("boardTalk.selecthowmany");
		System.out.println(count);
		model.addAttribute("count",count);
		List<BoardTalkVO> list = null;
		int how_many=10;
		if(page==1) {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("spage",1);
			map.put("epage",how_many);
			list = this.sqlSession.selectList("boardTalk.selectGetpage",map);
		}
		else {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("spage",(page-1)*how_many+1);
			map.put("epage",(page-1)*how_many+how_many);
			list = this.sqlSession.selectList("boardTalk.selectGetpage",map);
		}
		model.addAttribute("listinfo",list);
		return "community";
	}
	
	@RequestMapping(value = "/community_tab_list", method = RequestMethod.GET )
	public ModelAndView list(@RequestParam("id") String tag) {
		String tagname = "";
		switch(tag) {
		case "first" : tagname = "임금"; break;
		case "second" : tagname = "근로계약서"; break;
		case "third" : tagname = "근무환경"; break;
		case "four" : tagname = "해고"; break;
		case "fifth" : tagname = "기타"; break;
		}
		ModelAndView mav = new ModelAndView();
		List<BoardTalkVO> list = this.sqlSession.selectList("boardTalk.selectbytag",tagname);
		mav.addObject("listinfo",list);
		mav.setViewName("components/community_page/community_tab_list");
		return mav;
	}
	@GetMapping(value="/community_read")
	public String communitycontent(@RequestParam("title") int boardtalk_seq , @RequestParam("page") int page, Model model){
		
		BoardTalkVO content = this.sqlSession.selectOne("boardTalk.selectBoardTalkOne",boardtalk_seq);
		model.addAttribute("content",content);
		//댓글구현해야함
		List<CommentVO> list2 = this.sqlSession.selectList("boardTalk.selectcommentall",boardtalk_seq);
		model.addAttribute("replycomment",list2);
		
		int count = this.sqlSession.selectOne("boardTalk.selecthowmany");
		model.addAttribute("count",count);
		List<BoardTalkVO> list = null;
		int how_many=10;
		if(page==1) {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("spage",1);
			map.put("epage",how_many);
			list = this.sqlSession.selectList("boardTalk.selectGetpage",map);
		}
		else {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("spage",(page-1)*how_many+1);
			map.put("epage",(page-1)*how_many+how_many);
			list = this.sqlSession.selectList("boardTalk.selectGetpage",map);
		}
		model.addAttribute("listinfo",list);
		this.sqlSession.update("boardTalk.updateread",boardtalk_seq);
		return "communityread";
	}
	@GetMapping(value="/community_write")
	public String communitywrite(){	
		return "communitywrite";
	}
	
	@RequestMapping(value = "/registerreply", method = RequestMethod.POST)
	public String registerreply(CommentVO cv ,Model model){
		this.sqlSession.insert("boardTalk.insertReply",cv);
		int boardtalk_seq =cv.getBoardtalk_seq();
		List<CommentVO> list = this.sqlSession.selectList("boardTalk.selectcommentall",boardtalk_seq);
		model.addAttribute("replycomment",list);
		return "/components/communityread_page/community_feed_comment";
	}
	@PostMapping(value="/registercontent")
	public String registercontent(BoardTalkVO b) {
		System.out.println(b.getTag());
		this.sqlSession.insert("boardTalk.insertBoardTalk",b);
		return "redirect:/community?page=1";
	}
	
	
	
	
	
}