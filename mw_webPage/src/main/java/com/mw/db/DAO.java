package com.mw.db;

import org.mybatis.spring.SqlSessionTemplate;

public class DAO {

	private SqlSessionTemplate sqlSessionTemplate;

	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}
	
	// DB 처리
	
}
