package com.biyeseng.pojo;

import java.io.Serializable;

/*
 * 班级信息
 * 
 */
public class Classinfo implements Serializable {

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getClassno() {
		return classno;
	}

	public void setClassno(String classno) {
		this.classno = classno;
	}

	public String getClassname() {
		return classname;
	}

	public void setClassname(String classname) {
		this.classname = classname;
	}

	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public String getCollege() {
		return college;
	}

	public void setCollege(String college) {
		this.college = college;
	}

	private static final long serialVersionUID = 1L;
	private Integer id;
	private String classno;
	private String classname;
	private String major;
	private String college;
}
