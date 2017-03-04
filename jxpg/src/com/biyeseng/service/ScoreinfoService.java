package com.biyeseng.service;

import java.util.List;

import com.biyeseng.pojo.Scoreinfo;

public interface ScoreinfoService {

	// 根据课程id查看评分人数
	public Integer findCount(Integer courseId) throws Exception;

	// 根据课程id查找平均评分
	public Integer findAvg(Integer courseId) throws Exception;

	// 根据课程id 查找所有记录
	public List<Scoreinfo> findAll(Integer courseId) throws Exception;

}
