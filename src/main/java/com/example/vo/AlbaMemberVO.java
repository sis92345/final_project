package com.example.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

//개인 유저 VO
@Data
@AllArgsConstructor
@NoArgsConstructor
public class AlbaMemberVO {
	//Member 
	private String id;			//아이디
	private String password;	//비밀번호
	private int division;	//회원구분
	private String name;		//이름
	private String email;		//이메일
	private String tel;			//전화번호
}
