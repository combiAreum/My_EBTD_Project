package com.ebtd.www.bean;

import com.ebtd.www.bean.BusBean;

import lombok.Data;
import lombok.experimental.Accessors;

@Data //론복의 기능 중 게터 세터 투 스트링 이퀄스 해쉬코드 활용 가능 
@Accessors(chain = true)
public class BusBean {
	private String busNumber;
	private int motorNumber;
	private String companyName;
	private int driverNumber;
	private int routeTurn;
	private int busType;
}
