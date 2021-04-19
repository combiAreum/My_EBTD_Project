package com.ebtd.www.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;



@Controller
public class AdminCompanyController {
	
	@GetMapping(value = "/admin")
	public String getMain() {
		return "admin/mainForm";  //.jsp
	}
	//회사 등록 신청
	@GetMapping(value = "/admin/company/companyRequestListForm")
	public String getapprovalList() {
		return "admin/company/companyRequestListForm";
	}
	//회사 등록 신청 - 상세
	@GetMapping(value = "/admin/company/companyRequestDetailForm")
	public String getCompanyRequestDetail() {
		return "admin/company/companyRequestDetailForm";
	}
	//신규 노선 등록 신청 목록
	@GetMapping(value = "/admin/company/newBusRouteListForm")
	public String getNewBusRouteList() {
		return "admin/company/newBusRouteListForm";
	}
	//기존 노선 수정 신청 목록
	@GetMapping(value = "/admin/company/updateBusRouteListForm")
	public String getUpdateBusRouteList() {
		return "admin/company/updateBusRouteListForm";
	}
	//버스 회사 이름 목록
	@GetMapping(value = "/admin/company/companyNameListForm")
	public String getCompanyNameList() {
		return "admin/company/companyNameListForm";
	}
	//버스 회사 고객 소리함 목록
	@GetMapping(value = "/admin/company/companyQuestionListForm")
	public String getCompanyQuestionList() {
		return "admin/company/companyQuestionListForm";
	}
	//버스 회사 승인 목록
	@GetMapping(value = "/admin/company/companyApprovalListForm")
	public String getCompanyApprovalList() {
		return "admin/company/companyApprovalListForm";
	}
	//버스 회사 승인 목록 - 상세
	@GetMapping(value = "/admin/company/companyApprovalDetailForm")
	public String getCompanyApprovalDetail() {
		return "admin/company/companyApprovalDetailForm";
	}
	//버스 회사 반려 목록
	@GetMapping(value = "/admin/company/companyRejectListForm")
	public String getCompanyRejectList() {
		return "admin/company/companyRejectListForm";
	}
	//버스 회사 반려 목록 - 상세
	@GetMapping(value = "/admin/company/companyRejectDetailForm")
	public String getCompanyRejectDetail() {
		return "admin/company/companyRejectDetailForm";
	}
	
		
}
