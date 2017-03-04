package com.biyeseng.pojo;

import java.io.Serializable;
/**
 * 信息
 *
 */
public class Curriculum implements Serializable{
	
	private static final long serialVersionUID = 1L;
	private Integer id;
	private Integer couresno;
	private String coursename; 
	private String score;
	private String remark;
	private String teacherid;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getCouresno() {
		return couresno;
	}
	public void setCouresno(Integer couresno) {
		this.couresno = couresno;
	}
	public String getCoursename() {
		return coursename;
	}
	public void setCoursename(String coursename) {
		this.coursename = coursename;
	}
	public String getScore() {
		return score;
	}
	public void setScore(String score) {
		this.score = score;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public String getTeacherid() {
		return teacherid;
	}
	public void setTeacherid(String teacherid) {
		this.teacherid = teacherid;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	

}
