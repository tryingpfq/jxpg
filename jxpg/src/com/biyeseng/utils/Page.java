package com.biyeseng.utils;

import java.util.List;

public class Page<T> {
	// 每页记录数
	private Integer pageSize;
	// 总的记录数
	private Integer count;
	// 当前页
	private Integer pageNum;
	// 结果集
	private List<T> list;
	// 总的页数
	private Integer totalPage;

	public Page(Integer count, Integer pageSize, Integer pageNum) {
		this.count = count;
		this.pageSize = pageSize;
		this.pageNum = pageNum;
	}

	public Integer getPageSize() {
		return pageSize;
	}

	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}

	public Integer getCount() {
		return count;
	}

	public void setCount(Integer count) {
		this.count = count;
	}

	public Integer getPageNum() {
		if (pageNum <= 1) {
			pageNum = 1;
		}
		if (pageNum >= getTotalPage()) {
			pageNum = getTotalPage();
		}
		return pageNum;
	}

	public void setPageNum(Integer pageNum) {
		this.pageNum = pageNum;
	}

	public List<T> getList() {
		return list;
	}

	public void setList(List<T> list) {
		this.list = list;
	}

	public Integer getTotalPage() {
		if (getCount() % getPageSize() == 0) {
			totalPage = getCount() / getPageSize();
		} else {
			totalPage = getCount() / getPageSize() + 1;
		}
		return totalPage;
	}

	public void setTotalPage(Integer totalPage) {
		this.totalPage = totalPage;
	}

}
