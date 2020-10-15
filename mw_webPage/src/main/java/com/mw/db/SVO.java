package com.mw.db;

import org.springframework.web.multipart.MultipartFile;

public class SVO {

	private String store_idx, store_name, store_sub, store_img, store_hashtag, store_location, store_tel, store_hour, store_menu;
	private int store_like, store_comment, store_view;
	private MultipartFile file;
	
	public SVO() { }

	public SVO(String store_idx, String store_name, String store_sub, String store_img, String store_hashtag, String store_location,
			String store_tel, String store_hour, String store_menu, int store_like, int store_comment,
			int store_view, MultipartFile file) {
		super();
		this.store_idx = store_idx;
		this.store_name = store_name;
		this.store_sub = store_sub;
		this.store_img = store_img;
		this.store_hashtag = store_hashtag;
		this.store_location = store_location;
		this.store_tel = store_tel;
		this.store_hour = store_hour;
		this.store_menu = store_menu;
		this.store_like = store_like;
		this.store_comment = store_comment;
		this.store_view = store_view;
		this.file = file;
	}

	public String getStore_idx() {
		return store_idx;
	}

	public void setStore_idx(String store_idx) {
		this.store_idx = store_idx;
	}
	public String getStore_name() {
		return store_name;
	}

	public void setStore_name(String store_name) {
		this.store_name = store_name;
	}

	public String getStore_sub() {
		return store_sub;
	}

	public void setStore_sub(String store_sub) {
		this.store_sub = store_sub;
	}

	public String getStore_img() {
		return store_img;
	}

	public void setStore_img(String store_img) {
		this.store_img = store_img;
	}

	public String getStore_hashtag() {
		return store_hashtag;
	}

	public void setStore_hashtag(String store_hashtag) {
		this.store_hashtag = store_hashtag;
	}

	public String getStore_location() {
		return store_location;
	}

	public void setStore_location(String store_location) {
		this.store_location = store_location;
	}

	public String getStore_tel() {
		return store_tel;
	}

	public void setStore_tel(String store_tel) {
		this.store_tel = store_tel;
	}

	public String getStore_hour() {
		return store_hour;
	}

	public void setStore_hour(String store_hour) {
		this.store_hour = store_hour;
	}

	public String getStore_menu() {
		return store_menu;
	}

	public void setStore_menu(String store_menu) {
		this.store_menu = store_menu;
	}

	public int getStore_like() {
		return store_like;
	}

	public void setStore_like(int store_like) {
		this.store_like = store_like;
	}

	public int getStore_comment() {
		return store_comment;
	}

	public void setStore_comment(int store_comment) {
		this.store_comment = store_comment;
	}

	public int getStore_view() {
		return store_view;
	}

	public void setStore_view(int store_view) {
		this.store_view = store_view;
	}

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}
	
}
