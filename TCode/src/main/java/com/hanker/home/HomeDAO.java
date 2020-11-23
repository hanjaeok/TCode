package com.hanker.home;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class HomeDAO {

	@Inject
	private SqlSession sql;
}
