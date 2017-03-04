package com.biyeseng.web.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.biyeseng.pojo.Project;
import com.biyeseng.service.ProjectService;
import com.biyeseng.utils.Page;

@Controller
@RequestMapping("/project")
public class ProjectController {

	@Autowired
	private ProjectService projectService;
		
	@RequestMapping("/page")
	@ResponseBody
	public Page<Project> queryProjectPage(int pageNumber,int pageSize){
		return projectService.findProjectListPage(pageNumber, pageSize);
	}
	
	@RequestMapping("/add")
	public void addProject(Project project,HttpServletResponse response) throws IOException{
		response.getWriter().print("2000");
		projectService.addProject(project);
	}
	
	@RequestMapping("/delete")
	public void deleteProject(int id,HttpServletResponse response) throws IOException{
		response.getWriter().print("2000");
		if(projectService.findByScoreItemId(id).size()<=0){
			projectService.deleteById(id);
		}
	}
	
	@RequestMapping("/findById")
	@ResponseBody
	public Project findById(int id){
		return projectService.findById(id);
	}
	
	@RequestMapping("/update")
	public void update(Project project,HttpServletResponse response) throws IOException{
		response.getWriter().print("2000");
		projectService.updateProject(project);
	}
	
	@RequestMapping("/batchDelete")
	public void batchDeleteProject(HttpServletRequest request){
		String reqId = request.getParameter("ids");
		String[] ids = reqId.split(",");
		for(String id: ids){
			projectService.deleteById(Integer.parseInt(id));
		}
	}
}
