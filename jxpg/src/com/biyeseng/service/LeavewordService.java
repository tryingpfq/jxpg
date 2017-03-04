package com.biyeseng.service;

import java.util.List;

import com.biyeseng.pojo.Leaveword;

public interface LeavewordService {
	// 根据课程id查找所有记录
	public List<Leaveword> findAll(Integer courseId) throws Exception;
}
