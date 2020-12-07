package com.hanker.DTO;

import java.sql.Date;

public class t_BoardVO {

	private int t_bno;			// 글 일련번호
	private String t_title;		// 글 제목
	private String t_content;	// 글 타이틀
	private int t_cno;			// 카테고리 번호
	private int t_viewcnt;		// 조회수
	private Date t_regdate;		// 글 작성일
	
	private String t_category; 	 // 카테고리 (t_category 테이블)
	private String t_use;		 // 사용여부
	private String t_pcode; 	 // 소분류 코드 
	
	
	
	public int getT_viewcnt() {
		return t_viewcnt;
	}
	public void setT_viewcnt(int t_viewcnt) {
		this.t_viewcnt = t_viewcnt;
	}
	public String getT_pcode() {
		return t_pcode;
	}
	public void setT_pcode(String t_pcode) {
		this.t_pcode = t_pcode;
	}
	public String getT_use() {
		return t_use;
	}
	public void setT_use(String t_use) {
		this.t_use = t_use;
	}
	public String getT_category() {
		return t_category;
	}
	public void setT_category(String t_category) {
		this.t_category = t_category;
	}
	
	public int getT_bno() {
		return t_bno;
	}
	public void setT_bno(int t_bno) {
		this.t_bno = t_bno;
	}
	public String getT_title() {
		return t_title;
	}
	public void setT_title(String t_title) {
		this.t_title = t_title;
	}
	public String getT_content() {
		return t_content;
	}
	public void setT_content(String t_content) {
		this.t_content = t_content;
	}
	public int getT_cno() {
		return t_cno;
	}
	public void setT_cno(int t_cno) {
		this.t_cno = t_cno;
	}
	public Date getT_regdate() {
		return t_regdate;
	}
	public void setT_regdate(Date t_regdate) {
		this.t_regdate = t_regdate;
	}
	
	
}
