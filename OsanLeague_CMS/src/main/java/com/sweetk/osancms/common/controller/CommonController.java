package com.sweetk.osancms.common.controller;

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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.sweetk.osancms.common.mapper.CommonMapper;
import com.sweetk.osancms.common.vo.CommonVo;

@Controller
public class CommonController {
	
	private static final Logger logger = LoggerFactory.getLogger(CommonController.class);
	
	@Autowired
	private SqlSession sqlSession;
	
	
	@RequestMapping("/")
	public ModelAndView main(HttpServletRequest req, HttpSession session, HttpServletResponse resp) throws Exception {
		
		ModelAndView mav = new ModelAndView("login");
		try {
    		
    	} catch(Exception e){
    		e.printStackTrace();
    	}
    	
    	return mav;
	}

	@RequestMapping("/login.do")
	public ModelAndView login(HttpServletRequest req, HttpSession session, HttpServletResponse resp) throws Exception {
		
		ModelAndView mav = new ModelAndView("login");
		try {
			
		} catch(Exception e){
			e.printStackTrace();
		}
		
		return mav;
	}
	
	@ResponseBody
	@RequestMapping("/login_check.ajax")
	public String login_check (HttpServletRequest req, HttpSession session, HttpServletResponse resp
			,@RequestParam(value="id") String id
			,@RequestParam(value="password") String password) throws Exception {
		
		
		CommonMapper mapper = sqlSession.getMapper(CommonMapper.class);
		
		int cnt = 0;
		
		try {
			cnt = mapper.login_check(id, password);
			
			CommonVo info = new CommonVo();
			
			if(cnt > 0) {
				
				info = mapper.login_info(id);
				
				ArrayList<CommonVo> list = mapper.sports_list();
				
				if(info != null) {
					
					session.setAttribute("UserId", info.getId());
					session.setAttribute("UserEmail", info.getEmail());
					session.setAttribute("UserNm", info.getName());
					session.setAttribute("UserAuth", info.getManage_prt());
					session.setAttribute("SportsList", list);
					
					cnt = Integer.parseInt(info.getManage_prt());
				}
				
			}
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		return cnt+"";
	}
	
}
