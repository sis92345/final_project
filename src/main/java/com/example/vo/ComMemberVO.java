package com.example.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

//기업 유저 VO
@Data
@AllArgsConstructor
@NoArgsConstructor
public class ComMemberVO {
	//Member
	private String id;					//아이디
	private String password;			//비밀번호
	private int division;			//회원구분
	private String company_name;		//기업명
	private String representative;		//대표자명
	private String company_num;			//기업전화번호
	private String email;				//기업이메일
	private String address;				//기업주조
	private String latitude;			//위도
	private String longitude;			//경도
}
