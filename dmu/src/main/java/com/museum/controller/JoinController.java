package com.museum.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class JoinController {
	
	/*
	 * joinIdCheck.do : ȸ������ �� ���̵� �ߺ� üũ
	 */
	@RequestMapping(value = "/joinIdCheck.do", method = RequestMethod.GET)
	public ModelAndView joinIdCheck(String did) {
		ModelAndView mv = new ModelAndView();
		
		
		return mv;
	}
	
	/*
	 * join.do : ȸ������ ������
	 */
	@RequestMapping(value = "/join.do", method = RequestMethod.GET)
	public String join() {
		return "/join/join";
	}
	
}
