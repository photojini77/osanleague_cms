package com.sweetk.osancms.board.controller;

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
public class BoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	private SqlSession sqlSession;
	
	
	@RequestMapping("/board_list.do")
	public ModelAndView board_list(HttpServletRequest req, HttpSession session, HttpServletResponse resp) throws Exception {
		
		ModelAndView mav = new ModelAndView("board/board_list");
		try {
    		
    	} catch(Exception e){
    		e.printStackTrace();
    	}
    	
    	return mav;
	}

	@RequestMapping("/board_create.do")
	public ModelAndView board_create(HttpServletRequest req, HttpSession session, HttpServletResponse resp) throws Exception {
		
		ModelAndView mav = new ModelAndView("board/board_create");
		try {
			
		} catch(Exception e){
			e.printStackTrace();
		}
		
		return mav;
	}

}
