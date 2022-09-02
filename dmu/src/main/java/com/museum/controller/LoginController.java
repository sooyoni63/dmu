package com.museum.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.museum.dao.DmuMemberDAO;

@Controller
public class LoginController {
	
	//login.do : �α��� ������ ȣ��
	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public String login() {
		return "/login/login";
	}
}
