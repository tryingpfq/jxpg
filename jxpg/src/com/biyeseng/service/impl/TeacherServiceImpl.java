package com.biyeseng.service.impl;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.biyeseng.mapper.TeacherMapper;

import com.biyeseng.pojo.Teacher;
import com.biyeseng.service.TeacherService;
@Service
public class TeacherServiceImpl implements TeacherService {
	@Autowired
	private TeacherMapper mapper;

	@Override
	public List<Teacher> queryTeacherinfo() throws Exception {
		// TODO Auto-generated method stub
		List<Teacher> teacherlist = mapper.findTeacherList();
		return teacherlist;
	}

	@Override
	public void insertTeacher(Teacher teacher) throws Exception {
		mapper.insertTeacher(teacher);

	}

	@Override
	public void deletTeacher(Integer id) throws Exception {
		mapper.deleteTeacher(id);

	}
	


	@Override
	public int updateTeacher(Teacher teacher) throws Exception {
		// TODO Auto-generated method stub
		return mapper.updateTeacher(teacher);
	}
	
	



}
