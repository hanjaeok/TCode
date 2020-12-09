package com.hanker.set;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.hanker.DTO.t_BoardVO;

@Repository
public class SetDAO {
	
	@Inject
	private SqlSession sql;
	
}
