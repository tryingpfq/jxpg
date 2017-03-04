package com.biyeseng.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.biyeseng.mapper.CourseMapper;
import com.biyeseng.mapper.ScoreinfoMapper;
import com.biyeseng.pojo.Scoreinfo;
import com.biyeseng.service.ScoreinfoService;

@Service
public class ScoreinfoServiceImpl implements ScoreinfoService {
	@Autowired
	private ScoreinfoMapper mapper;
	@Autowired
	private CourseMapper courseMapper;

	@Override
	public Integer findCount(Integer courseId) throws Exception {
		// TODO Auto-generated method stub

		return mapper.findCount(courseId);
	}

	@Override
	public Integer findAvg(Integer courseId) throws Exception {
		// TODO Auto-generated method stub
		return mapper.findAvg(courseId);
	}

	@Override
	public List<Scoreinfo> findAll(Integer courseId) throws Exception {
		// TODO Auto-generated method stub
		return mapper.findAll(courseId);
	}

}
