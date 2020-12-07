package com.hanker.set;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.hanker.DTO.t_BoardVO;

@Service
public class SetServiceImpl implements SetService{
	
	@Inject
	private SetDAO setDAO;

	@Override
	public List<HashMap<String, Object>> lgCateList() throws Exception {
		return setDAO.lgCateList();
	}

	@Override
	public List<HashMap<String, Object>> sCateList() throws Exception {
		return setDAO.sCateList();
	}

	@Override
	public void addCategory(t_BoardVO tbVO) throws Exception {
		setDAO.addCategory(tbVO);
	}
	

}
