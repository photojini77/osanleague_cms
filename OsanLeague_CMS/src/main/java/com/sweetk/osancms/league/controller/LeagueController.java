package com.sweetk.osancms.league.controller;

import java.util.ArrayList;

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

import com.sweetk.osancms.league.mapper.LeagueMapper;
import com.sweetk.osancms.league.vo.LeagueVo;

@Controller
public class LeagueController {
	
	private static final Logger logger = LoggerFactory.getLogger(LeagueController.class);
	
	@Autowired
	private SqlSession sqlSession;
	
	
	@RequestMapping("/league_list.do")
	public ModelAndView league_list(LeagueVo lvo, HttpServletRequest req, HttpSession session, HttpServletResponse resp) throws Exception {
		
		ModelAndView mav = new ModelAndView("league/league_list");
		
		LeagueMapper mapper = sqlSession.getMapper(LeagueMapper.class);
		
		try {
			
			ArrayList<LeagueVo> list = mapper.league_list(lvo);
			
			mav.addObject("list", list);
    		
    	} catch(Exception e){
    		e.printStackTrace();
    	}
    	
    	return mav;
	}

	@RequestMapping("/league_info.do")
	public ModelAndView league_info(LeagueVo lvo, HttpServletRequest req, HttpSession session, HttpServletResponse resp) throws Exception {
		
		ModelAndView mav = new ModelAndView("league/league_info");
		
		LeagueMapper mapper = sqlSession.getMapper(LeagueMapper.class);
		
		String l_seq = req.getParameter("league_seq");
		
		try {
			
			LeagueVo info = new LeagueVo();
			
			info = mapper.league_info(l_seq);
			
			mav.addObject("info", info);
			mav.addObject("l_seq", l_seq);
			
		} catch(Exception e){
			e.printStackTrace();
		}
		
		return mav;
	}

	@RequestMapping("/league_manage_team.do")
	public ModelAndView league_manage_team(LeagueVo lvo, HttpServletRequest req, HttpSession session, HttpServletResponse resp) throws Exception {
		
		ModelAndView mav = new ModelAndView("league/league_manage_team");
		
		LeagueMapper mapper = sqlSession.getMapper(LeagueMapper.class);
		
		String l_seq = req.getParameter("league_seq");
		String s_seq = req.getParameter("sport_seq");
		
		if("".equals(s_seq) || s_seq == null) {
			s_seq = session.getAttribute("UserAuth").toString();
		}
		
		try {
			
			ArrayList<LeagueVo> list = mapper.league_manage_team(l_seq, s_seq);
			
			mav.addObject("list", list);
			mav.addObject("l_seq", l_seq);
			mav.addObject("s_seq", s_seq);
			
		} catch(Exception e){
			e.printStackTrace();
		}
		
		return mav;
	}
}
