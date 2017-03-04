package com.biyeseng.web.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.biyeseng.pojo.Course;
import com.biyeseng.pojo.Scoreinfo;
import com.biyeseng.service.CourseService;
import com.biyeseng.service.ScoreinfoService;
@Controller
@RequestMapping("/Scoureinfo")
public class ScoreinfoController {
	@Autowired
	public ScoreinfoService scoreinfoService;
	@Autowired
	public CourseService courseService;
	@RequestMapping(value="/findCount")
	public String finCount(@RequestParam(value="courseid",required=false) int courseid,HttpServletRequest request) throws Exception{
		System.out.println("courseid"+courseid);
		List<Course> courseList=courseService.findCourseList();
		System.out.println("courseList"+courseList);
		request.setAttribute("courseList", courseList);
		//根据课程id查找出评分人数
		Integer count=scoreinfoService.findCount(courseid);
		System.out.println("count"+count);
		request.setAttribute("count",count);
		List<Scoreinfo> scoreinfosList=scoreinfoService.findAll();
		System.out.println("scoreinfoList"+scoreinfosList);
		//根据课程id查找出评分的平均数
		Integer Avg=scoreinfoService.findAvg(courseid);
		System.out.println("Avg"+Avg);
		request.setAttribute("Avg", Avg);
		return "teacher/scoreView.jsp";
		
	}
/*	@RequestMapping(value="/findAvg")
	public String findAvg(@RequestParam("courseid") Integer courseid,HttpServletRequest request) throws Exception{
		Integer Avg=scoreinfoService.findAvg(courseid);
		request.setAttribute("Avg", Avg);
		return "";
		
	}*/

}
