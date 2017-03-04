package com.biyeseng.mapper;

import java.util.List;

import com.biyeseng.pojo.Classinfo;

public interface ClassinfoMapper {

	public List<Classinfo> findClassinfoList();

	public void deleteClassinfo(Integer id);

	public void insertClassinfo(Classinfo classinfo);

	public void updateClassinfo(Classinfo classinfo);

	public List<Classinfo> findClassinfoByid(Integer id);
}
