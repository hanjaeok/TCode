package com.hanker.sub;

import java.util.List;

import com.hanker.DTO.t_BoardVO;

public interface SubService {

	public List<t_BoardVO> javaList(String tCate) throws Exception;

	public t_BoardVO selJavaView(int bno) throws Exception;

	public List<t_BoardVO> categoryList() throws Exception;

	public void insBoard(t_BoardVO tbVO) throws Exception;

	public List<t_BoardVO> otherList() throws Exception;

	public void bCntAdd(int bno) throws Exception;

	public void updCntUp(t_BoardVO tbVO) throws Exception;

}
