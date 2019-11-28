package com.sweetk.osancms.manage.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ManageController {
	
	private static final Logger logger = LoggerFactory.getLogger(ManageController.class);

	
	@Autowired
	private SqlSession sqlSession;
	
	
	@RequestMapping("/manager_list.do")
	public ModelAndView manager_list(HttpServletRequest req, HttpSession session, HttpServletResponse resp) throws Exception {
		
		ModelAndView mav = new ModelAndView("manage/manager_list");
		try {
    		
    	} catch(Exception e){
    		e.printStackTrace();
    	}
    	
    	return mav;
	}
}
