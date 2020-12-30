package com.example.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

//개인 유저 VO
@Data
@AllArgsConstructor
@NoArgsConstructor
public class MemberVO {
	//Member 
	private String id;			//아이디
	private String password;	//비밀번호
	private int division;	//회원구분
}
