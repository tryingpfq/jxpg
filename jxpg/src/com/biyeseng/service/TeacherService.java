package com.biyeseng.service;

import java.util.List;

import com.biyeseng.pojo.Teacher;

public interface TeacherService {
public List<Teacher> queryTeacherinfo() throws Exception;
	
	public void insertTeacher(Teacher teacher) throws Exception;
	
	public void deletTeacher(Integer id) throws Exception;
	
	public int updateTeacher(Teacher teacher) throws Exception ;
}
