package com.mw.db;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

public class DAO {

	private SqlSessionTemplate sqlSessionTemplate;

	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}
	
// DB 처리 ↓↓↓
	
	// 검색어
	public List<SVO> getSearchResult(String keyWord) {
		List<SVO> list = null;
		list = sqlSessionTemplate.selectList("search", keyWord);
		return list;
	}
	
	// 가게 상세
	public SVO getStoreInfo(String idx) {
		SVO svo = null;
		svo = sqlSessionTemplate.selectOne("storeInfo", idx);
		return svo;
	}
	
	
}
