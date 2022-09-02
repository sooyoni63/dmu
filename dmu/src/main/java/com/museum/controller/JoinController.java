package com.museum.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.museum.dao.DmuMemberDAO;
import com.museum.vo.DmuMemberVO;

@Controller
public class JoinController {
	/*
	 * joinController.do : ȸ�� ���� ����
	 */
	@RequestMapping(value = "/joinController.do", method = RequestMethod.POST)
	public ModelAndView joinController(DmuMemberVO vo) {
		ModelAndView mv = new ModelAndView();
		
		DmuMemberDAO dao = new DmuMemberDAO();
		int result = dao.insert(vo);
		
		return mv;
	}
	
	//idCheck.do : ���̵� �ߺ� Ȯ��
	@ResponseBody
	@RequestMapping(value = "/join_idCheck.do", method = RequestMethod.GET)
	public String idCheck(String did) {
		DmuMemberDAO dao = new DmuMemberDAO();
		int result = dao.idCheck(did);
		
		return String.valueOf(result);
	}

	/*
	 * join_terms.do : ȸ������ ������
	 */
	@RequestMapping(value = "/join_terms.do", method = RequestMethod.GET)
	public String join_terms() {
		return "/join/terms";
	}
	
	/*
	 * join.do : ȸ������ ������
	 */
	@RequestMapping(value = "/join.do", method = RequestMethod.GET)
	public String join() {
		return "/join/join";
	}
	
}
