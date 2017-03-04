package com.biyeseng.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.biyeseng.mapper.ClassinfoMapper;
import com.biyeseng.mapper.LeavewordMapper;
import com.biyeseng.pojo.Leaveword;
import com.biyeseng.service.LeavewordService;

@Service
public class LeavewordServiceImpl implements LeavewordService {

	@Autowired
	private LeavewordMapper mapper;

	@Override
	public List<Leaveword> findAll(Integer courseId) throws Exception {
		// TODO Auto-generated method stub
		List<Leaveword> leavewords = mapper.findAll(courseId);
		return leavewords;
	}

}
