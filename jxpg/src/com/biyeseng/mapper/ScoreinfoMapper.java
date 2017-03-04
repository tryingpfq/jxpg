package com.biyeseng.mapper;

import java.util.List;
import java.util.Map;

import com.biyeseng.pojo.Scoreinfo;

public interface ScoreinfoMapper {	
	
	
	   
		//据id查询评分
		public Scoreinfo findId(Integer courseId) throws Exception;
		//表中所有信息
		public List<Scoreinfo> findAll() throws Exception;
		//根据课程id查询总分的平均值
		public int findAvg(Integer courseId) throws Exception;
		//分页查询
		public List<Scoreinfo> queryPage(Map<String,Object> inputParam) throws Exception;
		//根据课程id查询评分的人数
		public Integer findCount(Integer courseId) throws Exception;
		/*//根据条件查询 总的记录数
		public Integer findCountQuery(Scoreinfo scoreinfo) throws Exception;*/
}
