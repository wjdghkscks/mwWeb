package com.mw.db;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

public class DAO {

	private SqlSessionTemplate sqlSessionTemplate;

	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}
	
	// DB 처리
	public List<SVO> getSearchResult(String findSearch) {
		List<SVO> list = null;
		list = sqlSessionTemplate.selectList("search", findSearch);
		return list;
	}
	
	
}
