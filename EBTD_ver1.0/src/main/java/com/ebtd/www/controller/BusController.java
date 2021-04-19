package com.ebtd.www.controller;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.ebtd.www.service.BusMM;

/**
 * Handles requests for the application home page.
 */
@Controller
public class BusController {
	
	private static final Logger logger = LoggerFactory.getLogger(BusController.class);
	@Autowired
	private BusMM bm;
	
	ModelAndView mav;
	
	@GetMapping(value = "/")
	public String home(Locale locale, Model model) {
		
		return "company/companyindex";
	}
	@GetMapping(value = "/newBusForm")
	public String newBusForm() { //신규 노선 등록 신청 페이지 이동
		
		return "company/newBusForm";
	}
	/*
	 * @PostMapping(value = "/addNewBus") public ModelAndView
	 * addNewBus(ArrayList<>bList,HttpSession session) { //신규 노선 등록 신청 session =
	 * "주한운수"; mav = bm.addNewBus(session); return mav; }
	 */
	
	/*
	 * @PostMapping(value = "/access") //method 생략하면 get post 다 받음 public
	 * ModelAndView access(Member mb, HttpSession session) { //map 이나 hashmap을 쓰려면
	 * 리퀘스트파람 mav = new ModelAndView(); mav = mm.access(mb, session);
	 * 
	 * return mav; }
	 */

	
}