package com.example.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
//댓글 VO
@Data
@AllArgsConstructor
@NoArgsConstructor
public class CommentVO {
	//Member
	private int comment_seq;			//댓글 번호
	private String comment_content;		//댓글 내용
	private int boardtalk_seq;		
	private String id;
	private int step;
	private int lvl;
	private String regdate;
}
