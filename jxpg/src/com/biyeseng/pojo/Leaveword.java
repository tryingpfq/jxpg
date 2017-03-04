package com.biyeseng.pojo;

import java.sql.Date;

public class Leaveword {
	private int id;
	private int courseid;
	private int studentid;
	private String leaveword;
	private Date leavedate;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getCourseid() {
		return courseid;
	}

	public void setCourseid(int courseid) {
		this.courseid = courseid;
	}

	public int getStudentid() {
		return studentid;
	}

	public void setStudentid(int studentid) {
		this.studentid = studentid;
	}

	public String getLeaveword() {
		return leaveword;
	}

	public void setLeaveword(String leaveword) {
		this.leaveword = leaveword;
	}

	public Date getLeavedate() {
		return leavedate;
	}

	public void setLeavedate(Date leavedate) {
		this.leavedate = leavedate;
	}

	@Override
	public String toString() {
		return "Leaveword [id=" + id + ", courseid=" + courseid
				+ ", studentid=" + studentid + ", leaveword=" + leaveword
				+ ", leavedate=" + leavedate + "]";
	}

}
