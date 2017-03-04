package com.biyeseng.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.biyeseng.mapper.CourseMapper;
import com.biyeseng.pojo.Course;
import com.biyeseng.service.CourseService;
import com.biyeseng.utils.Page;

@Service
public class CourseServiceImpl implements CourseService {

	@Autowired
	private CourseMapper courseMapper;

	@Override
	public List<Course> findCourseList() throws Exception {

		return courseMapper.findAll();
	}

	@Override
	public void deleteCourse(Integer id) throws Exception {
		courseMapper.deleteById(id);

	}

	@Override
	public Course findByNo(String courseNo) throws Exception {

		return courseMapper.findById(courseNo);
	}

	@Override
	public Page<Course> query(Course course, Integer pageNum) throws Exception {

		Map<String, Object> map = new HashMap<String, Object>();
		Integer count = findCountQuery(course);
		Integer pageSize = 2;
		Page<Course> pageBean = new Page<Course>(count, pageSize, pageNum);
		map.put("course", course);
		map.put("pageSize", pageSize);
		map.put("startPos", (pageBean.getPageNum() - 1) * pageSize);
		pageBean.setList(courseMapper.query(map));
		return pageBean;
	}

	@Override
	public Page<Course> queryPage(Integer pageNum) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		Integer count = findCount();
		Integer pageSize = 5;
		Page<Course> pageBean = new Page<Course>(count, pageSize, pageNum);
		map.put("pageSize", pageSize);
		map.put("startPos", (pageBean.getPageNum() - 1) * pageSize);
		pageBean.setList(courseMapper.queryPage(map));
		return pageBean;
	}

	@Override
	public Integer findCount() throws Exception {

		return courseMapper.findCount();
	}

	@Override
	public Integer findCountQuery(Course course) throws Exception {

		return courseMapper.findCountQuery(course);
	}

	@Override
	public void addCourse(Course course) throws Exception {
		courseMapper.addCourse(course);

	}

	@Override
	public Course findById(Integer id) throws Exception {

		return courseMapper.findId(id);
	}

	@Override
	public void update(Course course) throws Exception {
		courseMapper.updateCourse(course);
	}

}
