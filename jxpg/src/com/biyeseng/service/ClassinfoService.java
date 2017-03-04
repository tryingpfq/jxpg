package com.biyeseng.service;

import java.util.List;

import com.biyeseng.pojo.Classinfo;

public interface ClassinfoService {

	public List<Classinfo> queryClassinfo() throws Exception;

	public List<Classinfo> queryClassinfobyid(Integer id) throws Exception;

	public void insertClassinto(Classinfo classinfo) throws Exception;

	public void deletClassinfo(Integer id) throws Exception;

	public void updateClassinfo(Classinfo classinfo) throws Exception;

}
