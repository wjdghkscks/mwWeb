package com.mw.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mw.db.DAO;
import com.mw.db.SVO;

@Controller
public class MwController {
	
	@Autowired
	private DAO dao;
	public void setDao(DAO dao) {this.dao = dao;}
	
	@RequestMapping("main.do")
	public ModelAndView mainCommand() {
		
		ModelAndView mv = new ModelAndView("main");
		
		return mv;
	}
	
	@RequestMapping("search.do")
	public ModelAndView searchCommand(
			@RequestParam("keyWord") String keyWord, HttpServletRequest request) {

		ModelAndView mv = new ModelAndView("search_res");
		try {
			mv.addObject("keyWord", keyWord);
	
			// 검색 결과에 해당되는 아이템 리스트 가져오기
			List<SVO> list = dao.getSearchResult(keyWord);
			mv.addObject("store_list", list);
		} catch (Exception e) {
			System.out.println(e);
		}
		return mv;
	}
	
	@RequestMapping("category_eat.do")
	public ModelAndView categoryEatCommand() {
		return new ModelAndView("category_eat");
	}
	
	@RequestMapping("category_drink.do")
	public ModelAndView categoryDrinkCommand() {
		return new ModelAndView("category_drink");
	}
	
	@RequestMapping("category_play.do")
	public ModelAndView categoryPlayCommand() {
		return new ModelAndView("category_play");
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
		
		String store_idx = request.getParameter("store_idx");
		ModelAndView mv = new ModelAndView("store_detail?store_idx=" + store_idx);
		
		// 가게 정보 받기
		SVO svo = dao.getStoreInfo(store_idx);
		request.getSession().setAttribute("svo", svo);
		
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
		return new ModelAndView("qna_write");
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
