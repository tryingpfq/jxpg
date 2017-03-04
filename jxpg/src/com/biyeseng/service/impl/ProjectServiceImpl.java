package com.biyeseng.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.biyeseng.mapper.ProjectMapper;
import com.biyeseng.pojo.Project;
import com.biyeseng.pojo.Scoreinfo;
import com.biyeseng.service.ProjectService;
import com.biyeseng.utils.Page;

@Service
public class ProjectServiceImpl implements ProjectService {

	@Autowired
	private ProjectMapper mapper;
	
	@Override
	public Page<Project> findProjectListPage(int pageNumber, int pageSize) {
		Map<String,Object> inputParam = new HashMap<String, Object>();
		inputParam.put("startPos", (pageNumber-1)*pageSize);
		inputParam.put("pageSize", pageSize);
		Page<Project> page = new Page<Project>(mapper.queryTotal(), pageSize, pageNumber);
		page.setList(mapper.queryProjectPage(inputParam));
		return page;
	}

	@Override
	public void addProject(Project project) {
		mapper.addProject(project);
	}

	@Override
	public void deleteById(int id) {
		mapper.deleteById(id);
	}

	@Override
	public Project findById(int id) {
		return mapper.findById(id);
	}

	@Override
	public void updateProject(Project project) {
		mapper.updateProject(project);
	}

	@Override
	public List<Scoreinfo> findByScoreItemId(int id) {
		return mapper.findByScoreItemId(id);
	}
	

}
