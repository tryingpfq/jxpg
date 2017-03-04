package com.biyeseng.service;

import java.util.List;
import java.util.Map;

import com.biyeseng.pojo.Course;
import com.biyeseng.utils.Page;

public interface CourseService {
	// 根据条件 查找总的记录数
	public Integer findCountQuery(Course course) throws Exception;

	// 根据条件 进行模糊查询
	public Page<Course> query(Course course, Integer pageNum) throws Exception;

	// 根据课程号查询
	public Course findByNo(String courseNo) throws Exception;

	// 根据id查询
	public Course findById(Integer id) throws Exception;

	// 查找所有课程列表
	public List<Course> findCourseList() throws Exception;

	// 更新课程
	public void update(Course course) throws Exception;

	// 删除课程
	public void deleteCourse(Integer id) throws Exception;

	// 添加课程
	public void addCourse(Course course) throws Exception;

	// 分页查询
	public Page<Course> queryPage(Integer pageNum) throws Exception;

	// 查找总的记录数
	public Integer findCount() throws Exception;

}
