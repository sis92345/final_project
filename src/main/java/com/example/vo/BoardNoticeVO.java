package com.example.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

//고객센터 게시판 VO
@Data
@AllArgsConstructor
@NoArgsConstructor
public class BoardNoticeVO {
	//member
	private int boardnotice_seq;	//고객센터 게시판 글번호
	private String board_cd;		//게시판 코드
	private String title;			//고객센터 제목
	private String writer;			//고객센터 글쓴이
	private int readnum;			//고객센터 조회수
	private String regdate;			//등록 날짜
	private String content;			//글 내용
	
}
