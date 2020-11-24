package com.hanker.sub;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.hanker.DTO.t_BoardVO;

@Controller
public class SubContorller {

	
	@Inject
	private SubService subsc;
	
	
	@RequestMapping(value="/sub/java", method=RequestMethod.GET)
	public String javaBoard(Model model) throws Exception{
		
		List<t_BoardVO> list = subsc.javaList();
		
		model.addAttribute("list", list);
		
		
		return "sub/java";
	}
	
	@RequestMapping(value="/sub/javaView", method=RequestMethod.POST)
	public String javaView(Model model, @RequestParam("BNO") int bno) throws Exception{
		
		t_BoardVO tbVO = new t_BoardVO();
		tbVO = subsc.selJavaView(bno);
		
		model.addAttribute("SC", tbVO);
		return "jsonView";
	}
	
	@RequestMapping(value="/sub/newWrite", method=RequestMethod.GET)
	public String newWrite(Model model) throws Exception{
		
		List<t_BoardVO> cateList = subsc.categoryList();
		
		model.addAttribute("list", cateList);
		return "sub/newWrite";
	}
	
	@RequestMapping(value="/sub/writeChck", method=RequestMethod.POST)
	public String writeChck(Model model, HttpServletRequest req) throws Exception{
		
		t_BoardVO tbVO = new t_BoardVO();
		tbVO.setT_cno(Integer.parseInt(req.getParameter("CNO")));
		tbVO.setT_title(req.getParameter("TITLE"));
		tbVO.setT_content(req.getParameter("CONTENT"));
		
		subsc.insBoard(tbVO);
		
		return "jsonView";
	}
}
