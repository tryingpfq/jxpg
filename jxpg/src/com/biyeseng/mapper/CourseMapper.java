package com.biyeseng.mapper;

import java.util.List;
import java.util.Map;

import com.biyeseng.pojo.Course;

public interface CourseMapper {

	// 添加课程
	public void addCourse(Course course) throws Exception;

	// 修改课程
	public void updateCourse(Course course) throws Exception;

	// 根据条件 对课程进行模糊查询
	public List<Course> query(Map<String, Object> inputParam) throws Exception;

	// 根据No查询课程
	public Course findById(String courseNo) throws Exception;

	// 根据id查询课程
	public Course findId(Integer id) throws Exception;

	// 所有课程列表
	public List<Course> findAll() throws Exception;

	// 删除课程
	public void deleteById(Integer id) throws Exception;

	// 分页查询
	public List<Course> queryPage(Map<String, Object> inputParam)
			throws Exception;

	// 查找总的记录数
	public Integer findCount() throws Exception;

	// 根据条件查询 总的记录数
	public Integer findCountQuery(Course course) throws Exception;

}
