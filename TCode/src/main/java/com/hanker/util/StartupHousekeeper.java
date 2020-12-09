package com.hanker.util;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.hanker.DTO.VisitCountVO;
import com.hanker.home.HomeDAO;

public class StartupHousekeeper implements HttpSessionListener{
	
	@Inject
	private HomeDAO homeDAO;
	
	@Override
	public void sessionCreated(HttpSessionEvent se) {
		HttpSession session = se.getSession();
		WebApplicationContext wac = WebApplicationContextUtils.getRequiredWebApplicationContext(session.getServletContext());
		HttpServletRequest req = ((ServletRequestAttributes)RequestContextHolder.currentRequestAttributes()).getRequest();
		
		UtilDAO utilDAO = (UtilDAO)wac.getBean("utilDAO");
		VisitCountVO vcVO = new VisitCountVO(); 
		vcVO.setVisit_ip(req.getRemoteAddr());
		vcVO.setVisit_agent(req.getHeader("User-Agent"));
		vcVO.setVisit_refer(req.getHeader("referer"));
		
		utilDAO.insertVisitor(vcVO);
		
		int todayCnt = utilDAO.todayCnt();
		int totalCnt = utilDAO.totalCnt();
		
		session.setAttribute("todayCnt", todayCnt);
		session.setAttribute("totalCnt", totalCnt);
	}

	@Override
	public void sessionDestroyed(HttpSessionEvent se) {
		// TODO Auto-generated method stub
		
	}
	
}
