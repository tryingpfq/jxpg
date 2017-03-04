package com.biyeseng.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.biyeseng.mapper.CurriculumMapper;
import com.biyeseng.pojo.Curriculum;
import com.biyeseng.service.CurriculumService;
@Service
public class CurriculumServiceImpl implements CurriculumService{
	@Autowired
	private CurriculumMapper mapper;

	@Override
	public List<Curriculum> queryCurriculumlist() throws Exception {
		// TODO Auto-generated method stub
		List<Curriculum> curriculumlist=mapper.findCurriculumList();
		return curriculumlist;
	}

	@Override
	public void insertCurriculum(Curriculum curriculum) throws Exception {
		// TODO Auto-generated method stub
		mapper.insertCurriculum(curriculum);
	}

	@Override
	public void deletCurriculum(Integer id) throws Exception {
		// TODO Auto-generated method stub
		mapper.deleteCurriculum(id);
	}

}
