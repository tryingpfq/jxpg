package com.biyeseng.web.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.junit.runners.Parameterized.Parameters;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.biyeseng.pojo.Classinfo;
import com.biyeseng.service.ClassinfoService;

@Controller
// @RequestMapping("/classManage")
public class ClassinfoController {

	@Autowired
	private ClassinfoService classinfoService;

	@RequestMapping(value = "/findClassinfoList")
	public String findClassinfoList(HttpServletRequest request)
			throws Exception {

		List<Classinfo> classinfolist = classinfoService.queryClassinfo();
		request.setAttribute("classinfoList", classinfolist);

		return "userinfo/classManage/classright.jsp";
	}

	@RequestMapping(value = "/deleteClass")
	public String deleteClass(@RequestParam(value = "id") Integer id,
			HttpServletRequest request) throws Exception {

		classinfoService.deletClassinfo(id);
		return this.findClassinfoList(request);
	}

	@RequestMapping(value = "/insertClassinfo")
	public String insertClass(Classinfo classinfo, HttpServletRequest request)
			throws Exception {
		classinfoService.insertClassinto(classinfo);

		return this.findClassinfoList(request);
	}

	@RequestMapping(value = "/updateClassinfo")
	public String updateClass(Classinfo classinfo, HttpServletRequest request)
			throws Exception {

		classinfoService.updateClassinfo(classinfo);
		return this.findClassinfoList(request);
	}

	@RequestMapping(value = "/findClassinfoByid")
	public String findClassinfoByid(@RequestParam(value = "id") Integer id,
			HttpServletRequest request) throws Exception {

		List<Classinfo> classinfobyid = classinfoService.queryClassinfobyid(id);
		request.setAttribute("classinfobyid", classinfobyid);

		return "userinfo/classManage/classupdate.jsp";
	}

}
