package com.hanker.home;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hanker.DTO.t_BoardVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Inject
	private HomeService hs;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) throws Exception{
		
		List<t_BoardVO> list = hs.boardTenLim();
		
		
		t_BoardVO tbVO = new t_BoardVO();
		tbVO = hs.getBestView();
		
		model.addAttribute("list", list);
		model.addAttribute("BEST", tbVO);
		
		return "home";
	}
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String login() throws Exception{
		
		return "login/login";
	}
	
	@RequestMapping(value="/sessionGet", method=RequestMethod.POST)
	public String sessionGet(Model model, HttpServletRequest req, HttpSession session) throws Exception{
		
		int todayCnt = Integer.parseInt(session.getAttribute("todayCnt").toString());
		int totalCnt = Integer.parseInt(session.getAttribute("totalCnt").toString());
		
		model.addAttribute("todayCnt", todayCnt);
		model.addAttribute("totalCnt", totalCnt);
		
		return "jsonView";
	}
}
