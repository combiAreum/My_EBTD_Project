package com.ebtd.www.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ebtd.www.service.AdminUserMM;
import com.fasterxml.jackson.core.JsonProcessingException;

@Controller
public class AdminUserController {	//김아름

	@Autowired 
	private AdminUserMM aum;	//관리자 이용자 관리 서비스 클래스

	ModelAndView mav;

	//이용자 리스트 전체 가져오고 성공하면 페이지 이동
	@GetMapping(value = "/getUserList")
	public ModelAndView getUserList() throws JsonProcessingException {	
		mav = aum.getUserList();	
		return mav;		
	}	

	//이용자 상세정보 가져오고 성공하면 페이지 이동
	@GetMapping(value = "/getUserDetail")
	public ModelAndView getUserDetail() throws JsonProcessingException {	
		//mav = am.getUserDetail();	
		return mav;		
	}

	//이용자 히스토리 전체 리스트 가져오고 성공하면 페이지 이동
	@GetMapping(value = "/getUserHistoryList")
	public ModelAndView getUserHistoryList() {	
		//mav = aum.getUserHistoryList();	
		return mav;		
	}

	//이용자 통계 가져오고 성공하면 페이지 이동
	@GetMapping(value = "/getUserChart")
	public ModelAndView getUserChart() {	
		//List<UserBean> uList;
		//uList= aum.getUserChart();	
		return mav;	
	}


}
