package com.biyeseng.mapper;

import java.util.List;

import com.biyeseng.pojo.Student;

public interface StudentMapper {

	public List<Student> findStudentList();

	public List<Student> findStudentByid(Integer id);

	public void insertStudent(Student student);

	public void deleteStudent(Integer id);

	public void updateStudent(Student student);

}
