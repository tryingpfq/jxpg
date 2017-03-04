package com.biyeseng.service;

import java.util.List;

import com.biyeseng.pojo.Curriculum;

public interface CurriculumService {
	
	public List<Curriculum> queryCurriculumlist() throws Exception;
	
	public void insertCurriculum(Curriculum curriculum) throws Exception;
	
	public void deletCurriculum(Integer id) throws Exception;

}
