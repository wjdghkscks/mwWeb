package com.mw.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.mw.db.DAO;
import com.mw.db.SVO;
import com.mw.model.Paging;

@Controller
public class MwController {
	
	@Autowired
	private DAO dao;
	public void setDao(DAO dao) {this.dao = dao;}
	
	@Inject
	Paging paging;
	
	String cPage;
	
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
		
		String s_idx = request.getParameter("s_idx");
		ModelAndView mv = new ModelAndView("store_detail?s_idx=" + s_idx);
		
		// 가게 정보 받기
		SVO svo = dao.getStoreInfo(s_idx);
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
	
	// 관리자 페이지
	@RequestMapping("admin.do")
	public ModelAndView adminCommand() {
		return new ModelAndView("admin");
	}
	
	// 관리자 페이지 > 가게 관리
	@RequestMapping("admin_store.do")
	public ModelAndView adminStoreCommand(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("admin_store");
		try {
			// 전체 게시물 수 (totalRecord)
			int count = dao.getTotalCount();
			paging.setTotalRecord(count);

			// 전체 페이지 수 (totalPage)
			if (paging.getTotalRecord() <= paging.getNumPerPage()) {
				paging.setTotalPage(1);
			} else {
				paging.setTotalPage(paging.getTotalRecord()/paging.getNumPerPage());
				if (paging.getTotalRecord() % paging.getNumPerPage()!=0) {
					paging.setTotalPage(paging.getTotalPage()+1);
				}
			}

			// 현재 페이지 구하기 (nowPage)
			cPage = request.getParameter("cPage");
			if (cPage == null) {
				paging.setNowPage(1);
			} else {
				paging.setNowPage(Integer.parseInt(cPage));
			}
			mv.addObject("cPage", cPage);

			// 시작 번호 (begin), 끝 번호 (end)
			paging.setBegin((paging.getNowPage()-1) * paging.getNumPerPage()+1);
			paging.setEnd((paging.getBegin()-1) + paging.getNumPerPage());

			// 가게 리스트
			List<SVO> list = dao.getList(paging.getBegin(), paging.getEnd());

			// 시작 블록 (beginBlock), 끝 블록 (endBlock)
			paging.setBeginBlock(
					(int)((paging.getNowPage()-1) / paging.getPagePerBlock()) * paging.getPagePerBlock() + 1);
			paging.setEndBlock(paging.getBeginBlock() + paging.getPagePerBlock()-1);

			// 블록 처리 >> endBlock 이 totalPage 보다 큰 경우,
			if (paging.getEndBlock() > paging.getTotalPage()) {
				paging.setEndBlock(paging.getTotalPage());
			}
			mv.addObject("list", list);
			mv.addObject("paging", paging);
		} catch (Exception e) {
			System.out.println(e);
		}
		return mv;
	}

	// 관리자 페이지 > 가게 관리 > 가게 추가
	@RequestMapping("storeAdd.do")
	public ModelAndView adminStoreAddCommand() {
		return new ModelAndView("admin_store_add");
	}
	
	// 관리자 페이지 > 가게 관리 > 가게 추가
	@RequestMapping(value = "storeAddOk.do", method = RequestMethod.POST)
	public ModelAndView adminStoreAddOkCommand(HttpServletRequest request, SVO svo) {
		ModelAndView mv = new ModelAndView("redirect:admin_store");
		
		// 파일 처리
		String path = request.getSession().getServletContext().getRealPath("/resources/upload");
		MultipartFile file = svo.getFile();
		
		if (file.isEmpty()) {
			svo.setS_img(" ");
		} else {
			svo.setS_img(svo.getFile().getOriginalFilename());
		}
		
		int result = dao.getWrite(svo);
		
		if (result > 0) {
			try {
				file.transferTo(new File(path + "/" + svo.getS_img()));
			} catch (IllegalStateException e) {
				System.out.println(e);
			} catch (IOException e) {
				System.out.println(e);
			}
		}
		return mv;
	}
	
	// 관리자 페이지 > 문의 관리
	@RequestMapping("admin_qna.do")
	public ModelAndView adminQnaCommand() {
		return new ModelAndView("admin_qna");
	}

}
