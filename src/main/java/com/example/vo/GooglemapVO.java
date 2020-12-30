package com.example.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class GooglemapVO {
	private int boardalba_seq;
	private String title;
	private String regdate;
	private int readnum;
	private String company_name;
	private String address;
	private int sal;
	private String workdate;
	private String worktime;
	private String worktype;
	private double longitude;
	private double latitude;
}
