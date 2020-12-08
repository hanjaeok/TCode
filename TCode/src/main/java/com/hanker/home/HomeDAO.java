package com.hanker.home;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.hanker.DTO.t_BoardVO;

@Repository
public class HomeDAO {

	@Inject
	private SqlSession sql;

	public List<t_BoardVO> boardTenLim() throws Exception{
		return sql.selectList("homeMapper.boardTenLim");
	}
	

}
