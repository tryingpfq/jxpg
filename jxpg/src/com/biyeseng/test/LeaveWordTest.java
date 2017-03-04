package com.biyeseng.test;

import java.util.HashMap;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.biyeseng.mapper.LeavewordMapper;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:spring/applicationContext-dao.xml","classpath:spring/applicationContext-service.xml","classpath:spring/applicationContext-transaction.xml","classpath:mybatis/sqlMapConfig.xml"})
public class LeaveWordTest {
	@Autowired
	private LeavewordMapper mapper;
	
	@Test
	public void testWord(){
		Map<String, Object> inputParam = new HashMap<String, Object>();
		inputParam.put("startTime", "2017-03-02");
		inputParam.put("endTime", "2017-03-04");
		inputParam.put("startPos", 0);
		inputParam.put("pageSize", 10);
		System.out.println(inputParam.toString());
		System.out.println(mapper.findLeaveWordByTimeList(inputParam).toString());
	}
	
	@Test
	public void findAllTest(){
		System.out.println(mapper.findAll(1).toString());
	}
}
