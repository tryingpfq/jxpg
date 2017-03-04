package com.biyeseng.web.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.biyeseng.pojo.Course;
import com.biyeseng.service.CourseService;
import com.biyeseng.utils.Page;

@Controller
@RequestMapping("/stumenue")
public class CourseController {

	@Autowired
	private CourseService courseService;

	@RequestMapping("/courseList")
	public String findCourseList(HttpServletRequest request) throws Exception {
		List<Course> courseList = courseService.findCourseList();
		request.setAttribute("courseList", courseList);
		return "courseList.jsp";
	}

	@RequestMapping("/courseDetail")
	public String findByNo(
			@RequestParam(value = "course_No", required = false) String courseNo,
			HttpServletRequest request) throws Exception {
		Course course = courseService.findByNo(courseNo);
		request.setAttribute("course", course);
		return "detail.jsp";
	}

	// 根据条件 进行模糊查询
	@RequestMapping("/courseFind")
	public String query(
			@RequestParam(value = "pageNum", required = false) Integer pageNum,
			Course course, HttpServletRequest request) throws Exception {
		Page<Course> pageBean = courseService.query(course, pageNum);
		request.setAttribute("course", course);
		request.setAttribute("pageBean", pageBean);
		return "querylist.jsp";
	}

	// 分页查询
	@RequestMapping("/coursePage")
	public String pageBean(
			@RequestParam(value = "pageNum", required = false) Integer pageNum,
			HttpServletRequest request) throws Exception {
		Page<Course> pageBean = courseService.queryPage(pageNum);
		request.setAttribute("pageBean", pageBean);
		return "courseslist.jsp";
	}

}
