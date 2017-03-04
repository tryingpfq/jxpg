package com.biyeseng.mapper;

import java.util.List;

import com.biyeseng.pojo.Teacher;

public interface TeacherMapper {

	public List<Teacher> findTeacherList();

	public void insertTeacher(Teacher teacher);

	public void deleteTeacher(Integer id);
	
	public int updateTeacher(Teacher teacher);
	
}
