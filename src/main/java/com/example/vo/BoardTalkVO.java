package com.example.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

//알바 토크 게시판 VO
@Data
@AllArgsConstructor
@NoArgsConstructor
public class BoardTalkVO {
	//member
	private int boardtalk_seq;	//알바 토크 게시판 글번호
	private String board_cd;		//게시판 코드
	private int comment_seq;		//댓글 번호
	private String title;			//제목
	private String writer;			//글쓴이
	private int readnum;			//조회수
	private String regdate;			//등록 날짜
	private String content;			//글 내용
	private String id;				//아이디
	private String tag;
}
