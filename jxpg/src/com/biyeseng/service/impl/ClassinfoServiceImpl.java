package com.biyeseng.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.biyeseng.mapper.ClassinfoMapper;
import com.biyeseng.pojo.Classinfo;
import com.biyeseng.service.ClassinfoService;

@Service
public class ClassinfoServiceImpl implements ClassinfoService {
	@Autowired
	private ClassinfoMapper mapper;

	@Override
	public List<Classinfo> queryClassinfo() throws Exception {
		// TODO Auto-generated method stub
		List<Classinfo> classlist = mapper.findClassinfoList();

		return classlist;
	}

	@Override
	public void insertClassinto(Classinfo classinfo) throws Exception {
		// TODO Auto-generated method stub
		mapper.insertClassinfo(classinfo);
	}

	@Override
	public void deletClassinfo(Integer id) throws Exception {
		// TODO Auto-generated method stub
		mapper.deleteClassinfo(id);
	}

	@Override
	public void updateClassinfo(Classinfo classinfo) throws Exception {
		// TODO Auto-generated method stub
		mapper.updateClassinfo(classinfo);
	}

	@Override
	public List<Classinfo> queryClassinfobyid(Integer id) throws Exception {
		// TODO Auto-generated method stub
		return mapper.findClassinfoByid(id);
	}

}
