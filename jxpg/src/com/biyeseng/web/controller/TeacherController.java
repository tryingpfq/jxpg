package com.biyeseng.web.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.biyeseng.pojo.Teacher;
import com.biyeseng.service.TeacherService;


@Controller
public class TeacherController {
	
	@Autowired
	private TeacherService teacherService;
	
	@RequestMapping(value="/findTeacherList")
	public String findTeacherList(HttpServletRequest request) throws Exception{
		
		List<Teacher> teacherlist=teacherService.queryTeacherinfo();
		
		request.setAttribute("teacherlist", teacherlist);
		
		return "teacher/personalInformation.jsp";
	} 
	@RequestMapping(value="/deleteTeacher")
	public String deletTeacher(@RequestParam(value="id") Integer id,HttpServletRequest request) throws Exception{
		
		teacherService.deletTeacher(id);
		return this.findTeacherList(request);
	}
	
	@RequestMapping(value="/insertTeacher")
	public String insertTeacher(Teacher teacher,HttpServletRequest request) throws Exception{
	
		teacherService.insertTeacher(teacher);
		return this.findTeacherList(request);
	}
	
	@RequestMapping(value="/updateTeacher")
	public String updateTeacher(Teacher teacher,HttpServletRequest request) throws Exception{
		teacherService.updateTeacher(teacher);
		teacher=new Teacher();
		return this.findTeacherList(request);
	}
	
	


}
