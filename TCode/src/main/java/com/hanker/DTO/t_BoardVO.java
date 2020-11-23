package com.hanker.DTO;

import java.sql.Date;

public class t_BoardVO {

	private int t_bno;			// 글 일련번호
	private String t_title;		// 글 제목
	private String t_content;	// 글 타이틀
	private int t_cno;			// 카테고리 번호
	private Date t_regdate;		// 글 작성일
	
	
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
