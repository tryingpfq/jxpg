var pageNumber = 1, pageSize = 10; // pageNumber当前页码，pageSize当前页最大页容量
var localSize;
function init() { // 初始化加载当前页数据
	$.ajax({
		type : 'post',
		url : 'project/page',
		data : 'pageNumber=' + pageNumber + '&pageSize=' + pageSize,
		async : false,
		dataType : 'json',
		success : function(data) {
			localSize = data.list.length;
			createProjectList(data.list);
			createProjectPageCount(data);
		}
	});
	checkInit();
}
function checkInit(){
	$("#allProjectCheck").attr("checked",false);
	$("#projectTb").find("input").click(function(){
		var count=0;
		$("#projectTb").find("input").each(function(){
			if($(this).attr("checked")==true){
				count++;
			}
		});
		if(count==localSize){
			$("#allProjectCheck").attr("checked",true);
		}else{
			$("#allProjectCheck").attr("checked",false);
		}
	});
	$("#allProjectCheck").click(function(){
		if($("#allProjectCheck").attr("checked")==false){
			$("#projectTb").find("input").attr("checked",false);
		}else{
			$("#projectTb").find("input").attr("checked",true);
		}
	});
}
function createProjectList(data) {
	$("#projectTb").html("");
	for (var i = 0; i < data.length; i++) {
		$("#projectTb")
				.append(
						"<tr><td><input type='checkbox' value='"
								+ data[i].id
								+ "' /></td><td>"
								+ (i + 1)
								+ "</td><td>"
								+ data[i].name
								+ "</td><td>"
								+ data[i].remark
								+ "</td><td><a href='javascript:clickUpdate("
								+ data[i].id
								+ ")' class='tablelink'>修改</a> <a href='javascript:clickDelete("
								+ data[i].id
								+ ")' class='tablelink'> 删除</a></td></tr>");
	}
}
function clickPage(offsetPage, totalPage) {
	if (offsetPage > 0 && offsetPage <= totalPage) {
		pageNumber = offsetPage;
		init();
	}
}
function createProjectPageCount(data) {
	$("#projectNum").html(data.count);
	$("#projectPageNum").html(data.pageNum);
	$(".paginList").html("");
	$(".paginList").append(
			"<li class='paginItem'><a href='javascript:clickPage("
					+ (pageNumber - 1) + "," + data.totalPage
					+ ")'><span class='pagepre'></span></a></li>");
	for (var i = 1; i <= data.totalPage; i++) {
		if (i == data.pageNum) {
			$(".paginList").append(
					"<li class='paginItem current'><a href='javascript:''>" + i
							+ "</a></li>");
		} else {
			$(".paginList").append(
					"<li class='paginItem'><a href='javascript:clickPage(" + i
							+ "," + data.totalPage + ")'>" + i + "</a></li>");
		}
	}
	$(".paginList").append(
			"<li class='paginItem'><a href='javascript:clickPage("
					+ (pageNumber + 1) + "," + data.totalPage
					+ ")'><span class='pagenxt'></span></a></li>");
}
function clickUpdate(data) {
	localStorage.setItem("projectType", "update");
	localStorage.setItem("projectId", data);
	location.href = "gradeManager/updateProject.jsp";
}
function clickDelete(data) {
	$.ajax({
		type : 'post',
		url : 'project/delete',
		data : 'id=' + data,
		async : false,
		dataType : 'html'
	});
	alert("成功删除");
	if (localSize == 1) {
		pageNumber = pageNumber - 1;
		if(pageNumber<=0)
			pageNumber=1;
	}
	init();	
}
function batchDelete(){
	var batchData=[];
	$("#projectTb").find("input").each(function(){
		if($(this).attr("checked")==true){
			batchData.push($(this).val());
		}
	});
	$.ajax({
		type : 'post',
		url : 'project/batchDelete',
		data : 'ids=' + batchData,
		async : false,
		dataType : 'html'
	});
	if(localSize==batchData.length){
		pageNumber=pageNumber-1;
		if(pageNumber<=0)
			pageNumber=1;
	}
	init();
	alert("批量删除成功");
}
$(function() {
	init();
});