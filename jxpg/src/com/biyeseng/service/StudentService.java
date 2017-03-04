package com.biyeseng.service;

import java.util.List;

import com.biyeseng.pojo.Student;

public interface StudentService {

	public List<Student> queryStudentlist() throws Exception;

	public List<Student> queryStudentbyid(Integer id) throws Exception;

	public void insertStudent(Student student) throws Exception;

	public void deletStudent(Integer id) throws Exception;

	public void updateStudent(Student student) throws Exception;

}
