package com.biyeseng.web.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.biyeseng.pojo.Course;
import com.biyeseng.service.CourseService;
import com.biyeseng.utils.Page;

@Controller
@RequestMapping("/userinfo/courseManager")
public class CourseManaController {

	@Autowired
	private CourseService courseService;

	// 课程列表
	@RequestMapping("/list")
	public String courseList(@RequestParam(value = "pageNum") Integer pageNum,
			HttpServletRequest request) throws Exception {
		Page<Course> pageBean = courseService.queryPage(pageNum);
		request.setAttribute("pageBean", pageBean);
		return "courseList.jsp";
	}

	// 添加课程
	@RequestMapping("/addcourse")
	public String addCourse(Course course, HttpServletRequest request)
			throws Exception {
		courseService.addCourse(course);
		return "redirect:list?pageNum=1";
	}

	// 删除课程
	@RequestMapping("/deletecourse")
	public String deleteCourse(@RequestParam(value = "id") Integer id)
			throws Exception {
		courseService.deleteCourse(id);
		return "redirect:list?pageNum=1";
	}

	// 更新课程
	@RequestMapping("/update")
	public String update(@RequestParam(value = "id") Integer id,
			HttpServletRequest request) throws Exception {
		Course course = courseService.findById(id);
		request.setAttribute("course", course);
		return "editCourse.jsp";
	}

	// 修改
	@RequestMapping("/editcourse")
	public String editCourse(Course course) throws Exception {

		courseService.update(course);
		return "redirect:list?pageNum=1";
	}
}
