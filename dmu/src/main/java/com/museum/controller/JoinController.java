package com.museum.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class JoinController {
	
	/*
	 * joinIdCheck.do : 회원가입 시 아이디 중복 체크
	 */
	@RequestMapping(value = "/joinIdCheck.do", method = RequestMethod.GET)
	public ModelAndView joinIdCheck(String did) {
		ModelAndView mv = new ModelAndView();
		
		
		return mv;
	}
	
	/*
	 * join.do : 회원가입 페이지
	 */
	@RequestMapping(value = "/join.do", method = RequestMethod.GET)
	public String join() {
		return "/join/join";
	}
	
}
