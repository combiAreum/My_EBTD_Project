package com.ebtd.www.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.ebtd.www.dao.I_BusDao;

@Service
public class BusMM {
	
	@Autowired
	private I_BusDao bDao;
	ModelAndView mav;

	/*
	 * public ModelAndView addNewBus(HttpSession session) { mav = new
	 * ModelAndView(); String view = null; bDao.addNewBus(session); return mav; }
	 */

}
