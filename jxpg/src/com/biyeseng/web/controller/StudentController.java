package com.biyeseng.web.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.biyeseng.pojo.Student;
import com.biyeseng.service.StudentService;

@Controller
public class StudentController {

	@Autowired
	private StudentService studentService;

	@RequestMapping(value = "/findStudentList")
	public String findSrudentList(HttpServletRequest request) throws Exception {

		List<Student> studentlist = studentService.queryStudentlist();

		request.setAttribute("studentlist", studentlist);

		return "userinfo/studentManage/studentright.jsp";
	}

	@RequestMapping(value = "/deleteStudent")
	public String deleteClass(@RequestParam(value = "id") Integer id,
			HttpServletRequest request) throws Exception {

		studentService.deletStudent(id);
		return this.findSrudentList(request);
	}

	@RequestMapping(value = "/insertStudent")
	public String insertClass(Student student, HttpServletRequest request)
			throws Exception {

		studentService.insertStudent(student);
		return this.findSrudentList(request);
	}

	@RequestMapping(value = "/findStudentbyid")
	public String findStudentbyid(@RequestParam(value = "id") Integer id,
			HttpServletRequest request) throws Exception {

		List<Student> studentbyid = studentService.queryStudentbyid(id);

		request.setAttribute("studentbyid", studentbyid);

		return "userinfo/studentManage/studentupdate.jsp";
	}

	@RequestMapping(value = "/updateStudent")
	public String updateStudent(HttpServletRequest request, Student student)
			throws Exception {

		studentService.updateStudent(student);

		return this.findSrudentList(request);
	}
}
