package com.biyeseng.mapper;

import java.util.List;
import java.util.Map;

import com.biyeseng.pojo.LeaveWordAdmin;
import com.biyeseng.pojo.Leaveword;

public interface LeavewordMapper {
	//查找所有记录
    public List<Leaveword> findAll(int courseId);
    
    //你的黄丹扬大哥大写的，不爽的话可以找他打架  Date startTime, Date endTime, int pageNumber,int pageSize
    public List<LeaveWordAdmin> findLeaveWordByTimeList(Map<String, Object> inputParam);
    public int findLeaveWordCount(Map<String, Object> inputParam);
}
