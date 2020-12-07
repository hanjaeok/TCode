package com.hanker.set;

import java.util.HashMap;
import java.util.List;

import com.hanker.DTO.t_BoardVO;

public interface SetService {

	public List<HashMap<String, Object>> lgCateList() throws Exception;

	public List<HashMap<String, Object>> sCateList() throws Exception;

	public void addCategory(t_BoardVO tbVO) throws Exception;


}
