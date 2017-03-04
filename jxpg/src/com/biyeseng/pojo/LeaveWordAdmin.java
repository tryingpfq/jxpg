package com.biyeseng.pojo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

/*
 * 本pojo类只为显示留言管理页面的pojo注解
 */
public class LeaveWordAdmin {
	private int id;
	private String coursename;
	private String name;
	private String leaveword;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date leavedate;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCoursename() {
		return coursename;
	}
	public void setCoursename(String coursename) {
		this.coursename = coursename;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLeaveword() {
		return leaveword;
	}
	public void setLeaveword(String leaveword) {
		this.leaveword = leaveword;
	}
	@JsonFormat(pattern="yyyy-MM-dd",timezone = "GMT+8") 
	public Date getLeavedate() {
		return leavedate;
	}
	public void setLeavedate(Date leavedate) {
		this.leavedate = leavedate;
	}
	@Override
	public String toString() {
		return "LeaveWordAdmin [id=" + id + ", coursename=" + coursename
				+ ", name=" + name + ", leaveword=" + leaveword
				+ ", leavedate=" + leavedate + "]";
	}
	
}
