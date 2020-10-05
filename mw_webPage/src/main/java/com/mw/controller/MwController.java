package com.mw.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mw.db.DAO;

@Controller
public class MwController {
	
	@Autowired
	private DAO dao;

	public void setDao(DAO dao) {
		this.dao = dao;
	}
	
	@RequestMapping("main.do")
	public ModelAndView mainCommand() {
		return new ModelAndView("main");
	}
	
	@RequestMapping("category_eat.do")
	public ModelAndView categoryEatCommand() {
		return new ModelAndView("search_category");
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
	
	@RequestMapping("my_like.do")
	public ModelAndView myLikeCommand() {
		return new ModelAndView("my_like");
	}
	
	@RequestMapping("my_review.do")
	public ModelAndView myReviewCommand() {
		return new ModelAndView("my_review");
	}

}
