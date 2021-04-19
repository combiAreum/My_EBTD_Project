package com.ebtd.www.bean;

import org.apache.ibatis.type.Alias;
import lombok.Data;


@Alias("user")
@Data	//싹 다 만들어줌-롬복 기능 중 게터 세터 투스트링 이퀄스 해쉬코드 활용 가능
public class UserBean {
	
		private String u_userName; //id(pk)
		private String u_password; //pw
		private int u_disabledno; //장애인번호
		private String u_name;  //이름
		private String u_userphonenum;	//전화번호
		private int u_type;	//장애유형 시각:1, 휠체어:0
		private String u_address;	//주소
		private String u_guardname;	//보호자 이름
		private String u_guardphonenum;	//보호자 전화번호
		private String u_guardrelation;	//보호자 관계
	
}
