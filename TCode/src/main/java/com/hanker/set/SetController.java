package com.hanker.set;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.hanker.DTO.t_BoardVO;

@Controller
public class SetController {
	
	@Inject
	private SetService setSC;
	
	@RequestMapping(value="/set/setting", method=RequestMethod.GET)
	public String setView(Model model) throws Exception{
		// 대분류
		List<HashMap<String, Object>> cList = setSC.lgCateList();
		// 소분류
		List<HashMap<String, Object>> sList = setSC.sCateList();
		
		
		model.addAttribute("cList", cList);
		model.addAttribute("sList", sList);
		return "set/setting";
	}
	
	/**
	 *	2020.12.04
	 *	by. Hanker
	 *	Comment
	 *	 - Left Menu List 불러오기 
	 */
	@RequestMapping(value="/set/categoryList", method=RequestMethod.POST)
	public String ltMenuCtgList(Model model) throws Exception{
		// 대분류
		List<HashMap<String, Object>> cList = setSC.lgCateList();
		// 소분류
		List<HashMap<String, Object>> sList = setSC.sCateList();
		
		
		model.addAttribute("cList", cList);
		model.addAttribute("sList", sList);
		return "jsonView";
	}
	
	/**
	 * 2020.12.04
	 * by. Hanker
	 * Comment
	 *  - 대분류, 소분류 카테고리 추가
	 */
	@RequestMapping(value="/set/addCategory", method=RequestMethod.POST)
	public String addCategory(Model model, @RequestParam("CNAME") String CNAME, @RequestParam("CODE") String CODE) throws Exception{
		
		t_BoardVO tbVO = new t_BoardVO();
		tbVO.setT_category(CNAME);
		tbVO.setT_pcode(CODE);
		
		setSC.addCategory(tbVO);
		
		model.addAttribute("RS", "SC");
		
		return "jsonView";
	}
}
