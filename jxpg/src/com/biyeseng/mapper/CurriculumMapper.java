package com.biyeseng.mapper;

import java.util.List;

import com.biyeseng.pojo.Curriculum;



public interface CurriculumMapper {
	
	public List<Curriculum> findCurriculumList();
	
	public void insertCurriculum(Curriculum curriculum);
	
	public void deleteCurriculum(Integer id);
}
	