package com.biyeseng.service;

import java.util.List;

import com.biyeseng.pojo.Project;
import com.biyeseng.pojo.Scoreinfo;
import com.biyeseng.utils.Page;

public interface ProjectService {
	public Page<Project> findProjectListPage(int pageNumber,int pageSize);
	
	public void addProject(Project project);
	public void deleteById(int id);
	public Project findById(int id);
	public void updateProject(Project project);
	
	public List<Scoreinfo> findByScoreItemId(int id);
}
