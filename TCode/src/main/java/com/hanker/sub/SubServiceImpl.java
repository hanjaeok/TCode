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
	public List<t_BoardVO> javaList(String tCate) throws Exception {
		return subDAO.javaList(tCate);
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

	@Override
	public List<t_BoardVO> otherList() throws Exception {
		return subDAO.otherList();
	}

	@Override
	public void bCntAdd(int bno) throws Exception {
		subDAO.bCntAdd(bno);
	}

	@Override
	public void updCntUp(t_BoardVO tbVO) throws Exception {
		subDAO.updCntUp(tbVO);
	}
	
	
}
