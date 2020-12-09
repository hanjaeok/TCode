package com.hanker.home;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.hanker.DTO.t_BoardVO;

@Service
public class HomeServiceImpl implements HomeService {

	@Inject
	private HomeDAO homeDAO;

	@Override
	public List<t_BoardVO> boardTenLim() throws Exception {
		return homeDAO.boardTenLim();
	}

	@Override
	public t_BoardVO getBestView() throws Exception {
		// TODO Auto-generated method stub
		return homeDAO.getBestView();
	}

}
