package com.biyeseng.web.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.biyeseng.pojo.LeaveWordAdmin;
import com.biyeseng.pojo.Leaveword;
import com.biyeseng.service.LeavewordService;
import com.biyeseng.utils.Page;
@Controller
@RequestMapping("/Leaveword")
public class LeavewordController {
	@Autowired
	public LeavewordService leavewordService;
	@RequestMapping(value="/findCount")
	public String findCount(@RequestParam("courseId") Integer courseId,HttpServletRequest request) throws Exception{
	
		List<Leaveword> leavewordlist= leavewordService.findAll(courseId);
		 request.setAttribute("leavewordlist", leavewordlist);
		return "dfs";
		
	}
	
	@RequestMapping(value="/adminPage")
	@ResponseBody
	public Page<LeaveWordAdmin> findLeaveWordAdminPage(int pageNumber,int pageSize,String startTime,String endTime){
		Map<String, Object> inputParams = new HashMap<String, Object>();
		inputParams.put("startTime", startTime);
		inputParams.put("endTime", endTime);
		inputParams.put("startPos", (pageNumber-1)*pageSize);
		inputParams.put("pageSize", pageSize);
		Page<LeaveWordAdmin> page = new Page<LeaveWordAdmin>(leavewordService.findCount(inputParams), pageSize, pageNumber);
		page.setList(leavewordService.findLeaveWordAdminList(inputParams));
		return page;
	}
}
