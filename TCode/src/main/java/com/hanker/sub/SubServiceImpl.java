package com.hanker.sub;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.hanker.DTO.t_BoardVO;

@Service
public class SubServiceImpl implements SubService{
	
	@Inject
	private SubDAO subDAO;

	@Override
	public List<t_BoardVO> javaList() throws Exception {
		return subDAO.javaList();
	}

	@Override
	public t_BoardVO selJavaView(int bno) throws Exception {
		return subDAO.selJavaView(bno);
	}

	@Override
	public List<t_BoardVO> categoryList() throws Exception {
		return subDAO.categoryList();
	}

	@Override
	public void insBoard(t_BoardVO tbVO) throws Exception {
		subDAO.insBoard(tbVO);
	}
}
