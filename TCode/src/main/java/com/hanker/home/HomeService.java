package com.hanker.home;

import java.util.List;

import com.hanker.DTO.t_BoardVO;

public interface HomeService {

	public List<t_BoardVO> boardTenLim() throws Exception;

	public t_BoardVO getBestView() throws Exception;

}
