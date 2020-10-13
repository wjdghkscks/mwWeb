package com.mw.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mw.db.DAO;
import com.mw.db.SVO;

@Controller
public class MwController {
	
	@Autowired
	private DAO dao;
	public void setDao(DAO dao) {this.dao = dao;}
	
	@RequestMapping("main.do")
	public ModelAndView mainCommand(HttpSession session) {
		
		ModelAndView mv = new ModelAndView("main");
		
		// 최근 방문한 가게 이력 세션 
		/*
		 * List<SVO> thisSessionView = session.getSessionContext();
		 * session.setAttribute("thisTimeView", thisSessionView);
		 */
		
		return mv;
	}
	
	@RequestMapping("search.do")
	public ModelAndView searchCommand(HttpServletRequest request) {
		String keyWord = request.getParameter("keyWord");
		
		ModelAndView mv = new ModelAndView("search_res?find="+keyWord);
		mv.addObject("keyWord", keyWord);
		
		// DAO 에서 검색 결과에 해당되는 아이템 리스트 가져오기
		List<SVO> list = dao.getSearchResult(keyWord);
		if (list.size() > 0) {
			mv.addObject("store_list", list);
		}
		
		return mv;
	}
	
	@RequestMapping("category_eat.do")
	public ModelAndView categoryEatCommand() {
		return new ModelAndView("category_eat");
	}
	
	@RequestMapping("submenu_mobile.do")
	public ModelAndView submenuMobileCommand() {
		return new ModelAndView("submenu_mobile");
	}
	
	@RequestMapping("search_main.do")
	public ModelAndView searchMainCommand() {
		return new ModelAndView("search_main");
	}
	
	@RequestMapping("search_category.do")
	public ModelAndView searchCategoryCommand() {
		return new ModelAndView("search_category");
	}
	
	@RequestMapping("store_detail.do")
	public ModelAndView storeDetailCommand(HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView("store_detail");
		
		// 가게 정보 받기
		String idx = request.getParameter("store_idx");
		SVO svo = dao.getStoreInfo(idx);
		mv.addObject("svo", svo);
		
		// 해시태그 분리
		String hash = request.getParameter("store_hashtag");
		String[] hashes = hash.split("-");
		mv.addObject("hashes", hashes);
		
		return mv;
	}
	
	@RequestMapping("qna.do")
	public ModelAndView qnaCommand() {
		return new ModelAndView("qna");
	}
	
	@RequestMapping("write_qna.do")
	public ModelAndView writeQnaCommand() {
		return new ModelAndView("write_qna");
	}
	
	@RequestMapping("user_info.do")
	public ModelAndView userInfoCommand() {
		return new ModelAndView("user_info");
	}
	
	@RequestMapping("my_info.do")
	public ModelAndView loginCommand() {
		return new ModelAndView("login");
	}
	@RequestMapping("my_like.do")
	public ModelAndView myLikeCommand() {
		return new ModelAndView("my_like");
	}
	
	@RequestMapping("my_review.do")
	public ModelAndView myReviewCommand() {
		return new ModelAndView("my_review");
	}

}
