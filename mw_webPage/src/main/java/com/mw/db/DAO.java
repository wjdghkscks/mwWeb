package com.mw.db;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;


public class DAO {

	private SqlSessionTemplate sqlSessionTemplate;
	
	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}
	
// DB 처리 ↓↓↓
	
	// 전체 게시물 수
	public int getTotalCount() throws Exception {
		int res = 0;
		res = sqlSessionTemplate.selectOne("totalCount");		
		return res;
	}
	
	// 관리자 페이지 - 게시물 리스트
	public List<SVO> getList(int begin, int end) throws Exception {
		List<SVO> list = null;
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("begin", begin);
		map.put("end", end);
		
		list = sqlSessionTemplate.selectList("adminList", map);		
		return list;
	}
	
	// 관리자 페이지 - 가게 추가
	public int getWrite(SVO svo) {
		int result = 0;
		System.out.println(svo.getS_img());
		result = sqlSessionTemplate.insert("adminWrite", svo);
		return result;
	}
	
	// 검색어
	public List<SVO> getSearchResult(String keyWord) throws Exception {
		List<SVO> list = null;
		list = sqlSessionTemplate.selectList("search", keyWord);
		return list;
	}
	
	// 가게 상세
	public SVO getStoreInfo(String store_idx) {
		SVO svo = null;
		svo = sqlSessionTemplate.selectOne("storeInfo", store_idx);
		return svo;
	}
	
	
}
