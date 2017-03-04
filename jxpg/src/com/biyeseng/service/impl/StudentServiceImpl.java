package com.biyeseng.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.biyeseng.mapper.StudentMapper;
import com.biyeseng.pojo.Student;
import com.biyeseng.service.StudentService;

@Service
public class StudentServiceImpl implements StudentService {
	@Autowired
	private StudentMapper mapper;

	@Override
	public List<Student> queryStudentlist() throws Exception {
		// TODO Auto-generated method stub
		List<Student> studentlist = mapper.findStudentList();
		return studentlist;
	}

	@Override
	public void insertStudent(Student student) throws Exception {
		// TODO Auto-generated method stub
		mapper.insertStudent(student);
	}

	@Override
	public void deletStudent(Integer id) throws Exception {
		// TODO Auto-generated method stub
		mapper.deleteStudent(id);
	}

	@Override
	public List<Student> queryStudentbyid(Integer id) throws Exception {
		// TODO Auto-generated method stub
		return mapper.findStudentByid(id);
	}

	@Override
	public void updateStudent(Student student) throws Exception {
		// TODO Auto-generated method stub
		mapper.updateStudent(student);
	}

}
