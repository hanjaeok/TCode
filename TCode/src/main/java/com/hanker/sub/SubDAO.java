package com.hanker.sub;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.hanker.DTO.t_BoardVO;

@Repository
public class SubDAO {
	
	@Inject
	private SqlSession sql;

	public List<t_BoardVO> javaList(String tCate) throws Exception{
		return sql.selectList("subMapper.javaList", tCate);
	}

	public t_BoardVO selJavaView(int bno) throws Exception {
		return sql.selectOne("subMapper.selJavaView", bno);
	}

	public List<t_BoardVO> categoryList() throws Exception {
		return sql.selectList("subMapper.categoryList");
	}

	public void insBoard(t_BoardVO tbVO) throws Exception{
		sql.insert("subMapper.insBoard", tbVO);
	}

	public List<t_BoardVO> otherList() throws Exception{
		return sql.selectList("subMapper.otherList");
	}

	public void bCntAdd(int bno) {
		sql.update("subMapper.bCntAdd", bno);
	}

	public void updCntUp(t_BoardVO tbVO) throws Exception{
		sql.update("subMapper.updCntUp", tbVO);
	}

}
