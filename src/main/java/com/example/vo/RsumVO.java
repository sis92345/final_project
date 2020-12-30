package com.example.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

//이력서 VO
@Data
@AllArgsConstructor
@NoArgsConstructor
public class RsumVO {
	//Member
	private int rsum_seq;				// 이력서 번호
	private String id;					//아이디
	private String title;				//제목
	private String name;				//이름
	private String academic_ability;	//최종학력
	private String local;				//희망 근무지
	private String business_type;		//업종
	private String work_type;			//희망 근무형태
	private String work_time;			//희망 근무일시
	private String work_date;			//희망 근무기간
	private String work_content;		//이력서 내용 
	
}
