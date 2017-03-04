package com.biyeseng.mapper;

import java.util.List;
import java.util.Map;

import com.biyeseng.pojo.Project;
import com.biyeseng.pojo.Scoreinfo;

public interface ProjectMapper {
	public List<Project> queryProjectPage(Map<String, Object> inputParam);
	public int queryTotal();
	
	public void addProject(Project project);
	public void updateProject(Project project);
	public void deleteById(int id);
	public Project findById(int id);
	public List<Scoreinfo> findByScoreItemId(int scoreItemId);
}
