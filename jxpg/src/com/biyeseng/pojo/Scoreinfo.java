package com.biyeseng.pojo;

public class Scoreinfo {
	private int id;
	private int studentid;
	private int courseid;
	private int scoreitemid;
	private int score;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getStudentid() {
		return studentid;
	}

	public void setStudentid(int studentid) {
		this.studentid = studentid;
	}

	public int getCourseid() {
		return courseid;
	}

	public void setCourseid(int courseid) {
		this.courseid = courseid;
	}

	public int getScoreitemid() {
		return scoreitemid;
	}

	public void setScoreitemid(int scoreitemid) {
		this.scoreitemid = scoreitemid;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	public Scoreinfo(int id, int studentid, int courseid, int scoreitemid,
			int score) {
		super();
		this.id = id;
		this.studentid = studentid;
		this.courseid = courseid;
		this.scoreitemid = scoreitemid;
		this.score = score;
	}

	public Scoreinfo() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Scoreinfo [id=" + id + ", studentid=" + studentid
				+ ", courseid=" + courseid + ", scoreitemid=" + scoreitemid
				+ ", score=" + score + "]";
	}

}
