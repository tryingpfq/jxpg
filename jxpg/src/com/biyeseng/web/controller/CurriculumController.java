package com.biyeseng.web.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.biyeseng.pojo.Curriculum;
import com.biyeseng.service.CurriculumService;


@Controller
public class CurriculumController {
	
	@Autowired
	private CurriculumService curriculumService;
	
	
	@RequestMapping(value="/findCurriculumList") 
	public String findCurriculumList(HttpServletRequest request) throws Exception{
		
		List<Curriculum> curriculumlist=curriculumService.queryCurriculumlist();
		
		request.setAttribute("curriculumlist", curriculumlist);
		
		return "userinfo/curriculum/curriculum.jsp";
	} 
	
	
	@RequestMapping(value="/deleteCurriculum")
	public String deleteCurriculum(@RequestParam(value="id") Integer id,HttpServletRequest request) throws Exception{
		
		curriculumService.deletCurriculum(id);
		return this.findCurriculumList(request);
	}
	
	@RequestMapping(value="/insertCurriculum")
	public String insertCurriculum(Curriculum curriculum,HttpServletRequest request) throws Exception{
	
		curriculumService.insertCurriculum(curriculum);
		return this.findCurriculumList(request);
	}


}
