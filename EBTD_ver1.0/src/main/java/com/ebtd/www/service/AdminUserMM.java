package com.ebtd.www.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.ebtd.www.bean.UserBean;
import com.ebtd.www.dao.I_UserDao;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Service
public class AdminUserMM {	//김아름

	@Autowired
	private I_UserDao uDao;

	ModelAndView mav;
	
	public ModelAndView getUserList() throws JsonProcessingException {
		mav = new ModelAndView();	
		ObjectMapper om = new ObjectMapper();
		String view = null;
		List<UserBean> uList = null;

		uList = uDao.getUserList();	//userList 디비 가서 가져오기
		//디비에서 가져온 데이터가 있으면
		if( (uList!=null) && (uList.size()!= 0) ) {
			mav.addObject("uList", om.writeValueAsString(uList));
			//잭슨으로 데이터-->json으로 변환
			view = "admin/user/userListForm";//.jsp
			mav.setViewName(view);

			//페이징을 하던 무한대로 쓸수있게 하던 해야됨 !
			//mav.addObject("paging", getPaging(pageNum));	//페이징?		
		}else {
			view = "/admin/mainForm";
			System.out.println("userList가져오기 실패-메인으로 이동");
			mav.setViewName(view);
		}
		return mav;
		 	
	} //getUserList end
	


}
