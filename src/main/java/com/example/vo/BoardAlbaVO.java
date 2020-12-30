package com.example.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BoardAlbaVO {
	//member
	private int boardalba_seq;	//알바 토크 게시판 글번호
	private String board_cd;		//게시판 코드
	private String id;				//아이디
	private String title;			//제목
	private String writer;			//글쓴이
	private int readnum;			//조회수
	private String regdate;			//등록 날짜
	private String content;			//글 내용
	private String corploc;			//회사 위치
	private String workdate;		//근무기간
	private String worktime;		//근무일시
	private String worktype;		//근무형태
	private int sal;				//급여
	private String workcondition;
	private String gender;
	private int age;
	
}
